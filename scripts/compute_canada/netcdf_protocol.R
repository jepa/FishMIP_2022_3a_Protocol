
# Read libraries
load_libs(c("ncdf4","tidyverse","data.table")) # load these packages


#-----------CONTROL PANNEL -------- #

start_time <- 1841 # Start of time set
end_time <- 2010 # end of time set
scenario <- "historical" # Note, use the following notation to match protocol: "pre-industrial","historical","rcp85", npp-control’ or ‘temperature-control’
sizes <-  "tcb" #c("b10cm","b30cm","tcb")

# Path to the aggregated data (inclide name untill size and year)
# NOTE: Make sure you jave both sizes in one directory so it processes both
# data_path <- "/Volumes/HALL2000/Data/FishMipCESM/Results/AggregatedData/CESMhist/dbem_cesm1-bcg_hist_"
# data_path <- "/Volumes/HALL2000/Data/FishMipCESM/Results/AggregatedData/CESMnpp/dbem_cesm1-bcg_npp_"

# Set the original data path (the one to be converted)
data_path <- "~/scratch/Results/R/fishmip3af0a"

# Path where you want data to be saved 
# NOTE: it will create a directory with the scenario name
save_path <- "~/scratch/Results/netcdf/fishmip3af0a"

# Load coordinate grid
# dbem index
dbem_cords <- read.csv("~/projects/rrg-wailung/jepa/R/Data/dbem/Lon_Lat_DBEM.txt", header = F)
colnames(dbem_cords) <- c("index","lon","lat")


# 1.2 Estimate gridcell area based on global variables (m^2)
# Degree ressolution for area estimation
# https://rdrr.io/github/stineb/rbeni/src/R/area.R
# https://www.pmel.noaa.gov/maillists/tmap/ferret_users/fu_2004/msg00023.html
# https://www.engr.scu.edu/~emaurer/tools/calc_cell_area_cgi.pl

r_earth <- 6371000 # NASA's volumetric mean radious https://nssdc.gsfc.nasa.gov/planetary/factsheet/earthfact.html
res_lon <- 0.5 # lon degree resolution
res_lat <- 0.5 # lat degree resolution

dbem_cords <- dbem_cords %>% 
  mutate(
    area = (4 * r_earth^2 * 0.5 * res_lon * pi/180 * cos(abs(lat) * pi/180 ) * sin(0.5 * res_lat * pi/180))
  )

# Call routine for both sizes (sizes variable)

convert_nc4(
       lat_lon = dbem_cords,
       data_path = data_path,
       t0 = start_time,
       tn = end_time,
       scen = scenario
       )

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

