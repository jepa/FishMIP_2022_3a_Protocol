### Compile data to netCDF format
# http://geog.uoregon.edu/bartlein/courses/geog490/week04-netCDF.html
# writing a netCDF file using the ncdf4 package

# Creating and writing (new) netCDF files involves first defining or “laying out”
# the dimensions and coordiate variables and the individual variables,
# and the attrributes of each, and then creating the file and “putting” 
# the data into the file, along with additional attributes or metadata.

# ----------------Run Function------------------- #

convert_nc4 <- function(lat_lon,t0,tn,scen,var){
  
  # ---------- Step 0 ------------- #
  # Create the paths to load all data needed
  years <- seq(t0,tn,1)
  paths <- paste(data_path,var,"_",years,".txt",sep="")
  
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
  nc_name <- paste("dbem_cesm1-bgc_nobc_",scenario,"_nosoc_co2_",var,"_global_annual_",t0,"-",tn,sep="")
  
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
  
  time_unit <- paste("Years since",years[1])
  
  
  # Create Lat, Lon, and Time data
  lon_dim <- ncdim_def("lon","degrees_east",as.double(lon)) 
  lat_dim <- ncdim_def("lat","degrees_north",as.double(lat))
  time_dim <- ncdim_def("time",time_unit,as.double(time))
  
  # define variables
  long_name <- paste(scenario, "for", var, "using DBEM-CESM")
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
  ncatt_put(n_cout,0,"Authors","William Cheung, Juliano Palacios-Abrantes & Travis Tai")
  ncatt_put(n_cout,0,"Date",Sys.Date())
  ncatt_put(n_cout,0,"Forcing","cesm1-bgc")
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



## ------------------ ##
# Start Routine
## ------------------ ##
# Running function for both sizes

# Read libraries
library(MyFunctions)
pckg <- c("ncdf4","tidyverse","data.table") # load these packages
my_lib(pckg)

#-----------CONTROL PANNEL -------- #

start_time <- 1860 # Start of time set
end_time <- 2100 # end of time set
scenario <- "historical" # Note, use the following notation to match protocol: "pre-industrial","historical","rcp85", npp-control’ or ‘temperature-control’
sizes <-  "tcb" #c("b10cm","b30cm","tcb")

# Path to the aggregated data (inclide name untill size and year)
# NOTE: Make sure you jave both sizes in one directory so it processes both
# data_path <- "/Volumes/HALL2000/Data/FishMipCESM/Results/AggregatedData/CESMhist/dbem_cesm1-bcg_hist_"
# data_path <- "/Volumes/HALL2000/Data/FishMipCESM/Results/AggregatedData/CESMnpp/dbem_cesm1-bcg_npp_"

# Set the original data path (the one to be converted)
data_path <- "/Volumes/HALL2000/Data/FishMipCESM/Results/CESMhist/dbem_cesm1-bcg_hist_"

# Path where you want data to be saved 
# NOTE: it will create a directory with the scenario name
save_path <- "/Volumes/HALL2000/Data/FishMipCESM/Results/NoChilenc4Data"

# Load coordinate grid
coords <- my_path("G", extra_path = "Spatial/DBEM", name = "Lon_Lat_DBEM.txt", read = T, header = F) %>% 
  dplyr::select(-V1) # no need for index
colnames(coords) <- c("lon","lat")

# 1.2 Estimate gridcell area based on global variables (m^2)
# Degree ressolution for area estimation
# https://rdrr.io/github/stineb/rbeni/src/R/area.R
# https://www.pmel.noaa.gov/maillists/tmap/ferret_users/fu_2004/msg00023.html
# https://www.engr.scu.edu/~emaurer/tools/calc_cell_area_cgi.pl

r_earth <- 6371000 # NASA's volumetric mean radious https://nssdc.gsfc.nasa.gov/planetary/factsheet/earthfact.html
res_lon <- 1 # lon degree resolution
res_lat <- 1 # lat degree resolution

coords <- coords %>% 
  mutate(
    area = (4 * r_earth^2 * 0.5 * res_lon * pi/180 * cos(abs(lat) * pi/180 ) * sin(0.5 * res_lat * pi/180))
  )

# Call routine for both sizes (sizes variable)

lapply(sizes, 
       convert_nc4,
       lat_lon = coords,
       t0 = start_time,
       tn = end_time,
       scen = scenario)

## ------------------- ##
#  END ROUTINE 
## ------------------- ##


# ---------------- TESTING FUNCTION RESULT -------------- #
library(lattice)
library(RColorBrewer)
# Test file

ncin <- nc_open(paste(save_path,"/",scenario,"/dbem_cesm1-bgc_nobc_",scenario,"_nosoc_co2_tcb_global_annual_1860-2005.nc",sep=""))
# 
# # get longitude and latitude
lon <- ncvar_get(ncin,"lon")
nlon <- dim(lon)
# 
# # get lat
lat <- ncvar_get(ncin,"lat")
nlat <- dim(lat)
# 
# # get time
time <- ncvar_get(ncin,"time")
time
# 
y <- 30
test_data <- ncvar_get(ncin,"tcb")
ncin_slice <- test_data[,,y]
# 
# # Print map
image(lon,lat,log10(ncin_slice), col=rev(brewer.pal(10,"RdBu")))

# Print log10 scale version
grid <- expand.grid(lon=lon, lat=lat)
# cutpts <- c(-0.1,seq(0,1,0.1))
cutpts <- seq(-1,-5,-1)

levelplot(log10(ncin_slice) ~ lon * lat, data=grid, at=cutpts, cuts=10, pretty=T, 
          col.regions=(rev(brewer.pal(10,"RdBu"))))

# Looking good! May 25. JEPA
## ----------END TESTING--------- ##


### Path to send data to server
# 
# scp dbem_cesm1* b381132@mistralpp.dkrz.de:/work/bb0820/ISIMIP/ISIMIP2b/UploadArea/marine-fishery_global/DBEM/_tmp/historical