
source("./functions/load_libs_fx.R")
source("./functions/netcdf_convert_fx.R")
# Read libraries
load_libs(c("ncdf4","tidyverse","data.table")) # load these packages


#-----------CONTROL PANNEL -------- #
scenario <- "obsclim" # Note, use the following notation to match protocol: "pre-industrial","historical","rcp85", npp-control’ or ‘temperature-control’
sizes <-  "tcb" #c("b10cm","b30cm","tcb")

# Set the original data path (the one to be converted)
load("/Users/jepa88/Library/CloudStorage/OneDrive-UBC/Data/FishMIP_2022_3a_Protocol/Results/Abd_data.RData")


# Path where you want data to be saved 
save_path <- "/Users/jepa88/Library/CloudStorage/OneDrive-UBC/Data/FishMIP_2022_3a_Protocol/Results"

# Load coordinate grid
dbem_cords <- MyFunctions::my_data("dbem_coords")



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


start_time <- c(1841,1961) # Start of time set
end_time <- c(1960,2010) # end of time set

for(i in 1:2){
  
  print(start_time[i])
  print(end_time[i])
  
  convert_nc4(
    dataset = combined_data,
    lat_lon = dbem_cords,
    t0 = start_time[i],
    tn = end_time[i],
    scen = scenario,
    var = sizes
  )
  
}

## ------------------- ##
#  END ROUTINE 
## ------------------- ##


# ---------------- TESTING FUNCTION RESULT -------------- #



ncd_df <- metR::ReadNetCDF(paste0(save_path,"/obsclim/","dbem_gfdl-mom6_cobalt2_non_obsclim_histsoc_default_tcb_global_annual_1841-2010.nc"))
ncd_df


ncd_df %>% 
  # mutate(year = year(time)) %>% 
  # filter(time == 1)
  group_by(time) %>% 
  summarise(
    mean_tcb = mean(tcb,na.rm = T)
  ) %>% 
  ggplot() +
  geom_line(
    aes(
      x = time,
      y = mean_tcb
    )
  )

ncd_df %>% 
  mutate(year = year(time)) %>% 
  filter(year %in% c(1841,1951,2010)) %>% 
  ggplot() +
  geom_tile(
    aes(
      x = lon,
      y = lat,
      fill = log10(tcb)
    )
  ) +
    facet_wrap(~year) +
  scale_fill_viridis_b()
