### Compile data to netCDF format
# http://geog.uoregon.edu/bartlein/courses/geog490/week04-netCDF.html
# writing a netCDF file using the ncdf4 package

# Creating and writing (new) netCDF files involves first defining or “laying out”
# the dimensions and coordiate variables and the individual variables,
# and the attrributes of each, and then creating the file and “putting” 
# the data into the file, along with additional attributes or metadata.

# ----------------Run Function------------------- #

convert_nc4 <- function(lat_lon,t0,tn,scen,data_path){
  
  # ---------- Step 0 ------------- #
  # Create the paths to load all data needed
  years <- seq(t0,tn,1)
  paths <- paste(data_path,scen,"agg_",years,".txt",sep="")
  
  # ---------- Step 1 ------------- #
  # Data preparation
  # 1.1 Transform data to 1x1 grid
  
  data <- bind_cols(coords,lapply(paths, fread)) %>% 
    # round grids to 1 degree
    mutate_at(vars(lon,lat),round) %>% 
    # Fix the fact that the Earth is not flat
    mutate(
      lat = ifelse(lat < 0, lat + 1/2, lat - 1/2),
      lon = ifelse(lon < 0, lon + 1/2, lon - 1/2)
    ) %>% 
    group_by(lon,lat) %>% 
    summarise_all(sum,na.rm=T) %>% 
    # 1.2 Transform Abd data to g C  m^2 ( gCm^2 = tons/1000000/9/m^2)
    mutate_at(vars(-lat,-lon,-area),
              ~.*100000/9/area) %>%
    ungroup() %>% 
    dplyr::select(-area)
  
  # ---------- Step 2 ------------- #
  # Create the netCDF filename
  
  
  # path and file name, set dname
  # <model>_<climate-forcing>_<bias-adjustment>_<climate-scenario>_<soc-scenario>_<sens-scenario>_<variable>_<global>_<time-step>_<start-year>_<end-year>.nc
  # boats_gfdl-mom6_cobalt2_none_obsclim_histsoc_default_tcb_global_monthly_1961_2010.nc
  nc_name <- paste("dbem_gfdl-mom6_cobalt2_non",scenario,"histsoc_default_",var,"_global_annual_",t0,"-",tn,sep="")
  
  complete_path <- paste(save_path,scenario,"",sep="/")
  
  if(dir.exists(complete_path) == F){
    dir.create(complete_path)
  }
  
  nc_fname <- paste(complete_path, nc_name, ".nc", sep="")
  
  # ---------- Step 3 ------------- #
  # Convert data to 3d array
  
  ### Get data
  # Longitude
  lon <- as.array(unique(data$lon))
  nlon <- length(lon)
  
  # Latitude
  lat <- as.array(unique(data$lat))
  nlat <- length(lat)
  
  # Time frame
  time <- seq(0,tn-t0,1)
  nt <- length(time)
  
  # Create dummy array to fill in
  fill_value <- 1e32 # Don't really know what this does but all NC files seems to have it
  data_array <- array(fill_value, dim=c(nlon,nlat,nt))
  
  # Populate dummy array with data (might take a little bit)
  ptm <- proc.time() 
  j2 <- sapply(data$lon, function(x) which.min(abs(lon-x)))
  k2 <- sapply(data$lat, function(x) which.min(abs(lat-x)))
  
  nobs <- dim(data)[1]
  l <- rep(1:nt,each=nobs)
  data_array[cbind(j2,k2,l)] <- as.matrix(data[1:nobs,3:(nt+2)])
  proc.time() - ptm
  
  
  # ---------- Step  Check ------------- #
  # Make a map of a random year number 
  # ------------------------------------- #
  
  # library(lattice)
  # library(RColorBrewer)
  # year <- 2
  # grid <- expand.grid(lon=unique(data$lon), lat=unique(data$lat))
  # 
  # levelplot(data_array[,,year] ~ lon * lat, data=grid, cuts=11, pretty=T,
  #           col.regions=(rev(brewer.pal(10,"RdBu"))), main="Test Data")
  
  # All is gut!!
  # ------------------------------------- #
  
  
  # ---------- Step 4 ------------- #
  # create and write the netCDF file -- ncdf4 version
  # define dimensions
  
  time_unit <- paste("days since 1841-1-1 00:00:00")
  
  
  # Create Lat, Lon, and Time data
  lon_dim <- ncdim_def("lon","degrees_east",as.double(lon)) 
  lat_dim <- ncdim_def("lat","degrees_north",as.double(lat))
  time_dim <- ncdim_def("time",time_unit,as.double(time))
  
  # define variables
  long_name <- paste(scenario, "for", var, "using DBEM-GFDL-COBALT2")
  main_def <- ncvar_def(var, "g Cm^-2",list(lon_dim,lat_dim,time_dim),fill_value,long_name,prec="single")
  
  # create netCDF file
  n_cout <- nc_create(nc_fname,list(main_def),force_v4=TRUE)
  
  # ---------- Step 5 ------------- #
  # Populate netCDF
  
  # Include variables
  ncvar_put(n_cout,main_def,data_array)
  
  # Include additional attributes into dimension and data variables
  ncatt_put(n_cout,"lon","axis","x") #,verbose=FALSE) #,definemode=FALSE)
  ncatt_put(n_cout,"lat","axis","y")
  ncatt_put(n_cout,"time","axis","t")
  
  # add global attributes
  ncatt_put(n_cout,0,"Title",long_name)
  ncatt_put(n_cout,0,"Model","DBEM")
  ncatt_put(n_cout,0,"Institution","University of British Columbia, Changing Ocean Research Unit")
  ncatt_put(n_cout,0,"Authors","William W.L. Cheung, Juliano Palacios-Abrantes & Isabella Morgante")
  ncatt_put(n_cout,0,"Date",Sys.Date())
  ncatt_put(n_cout,0,"Forcing","gfdl-mom6_cobalt2")
  ncatt_put(n_cout,0,"Bias correction","nobc")
  
  if(scenario %in% c("pre-industrial","historical","rcp85")){
    ncatt_put(n_cout,0,"Climate Scenario",scenario)
  }else{
    ncatt_put(n_cout,0,"Scenario",scenario)
  }
  
  ncatt_put(n_cout,0,"Human impact","non")
  ncatt_put(n_cout,0,"Default CO2 scenario","co2")
  ncatt_put(n_cout,0,"Variable name",var)
  ncatt_put(n_cout,0,"Region","Global")
  ncatt_put(n_cout,0,"Temporal resolution","annual")
  ncatt_put(n_cout,0,"First and last year reported",paste(t0,tn))
  
  # close the file, writing data to disk
  nc_close(n_cout)
  
  # return(n_cout)
  
} # close function