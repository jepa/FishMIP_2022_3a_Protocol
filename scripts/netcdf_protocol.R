
source("./functions/load_libs_fx.R")
source("./functions/netcdf_convert_fx.R")
# Read libraries
load_libs(c("ncdf4","tidyverse","data.table")) # load these packages

# ----------------------- #
# INSTRUCTIONS FROM FISHMIP
# ----------------------- #

# We ask modellers to include all outputs from 1841 onwards 
# for use in our evaluation assessment of model drift. 
# Each output should be saved as two files,
# the first covering the spin-up and transition period (1841-1960) 
# and the second covering the historical (experiment) period (1961-2010).

# histsoc	Varying direct human influences (i.e. historical estimates of fishing effort).
# nat	No fishing (naturalized run).


#-----------CONTROL PANNEL -------- #
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


climate_scen <- "obsclim" # Note, use the following notation to match protocol: "pre-industrial","historical","rcp85", npp-control’ or ‘temperature-control’
sizes <-  "tc" # abundance tcb or catch tc
socioecon_scen <- "histsoc" # Note, use nat for no fishing and histsoc for fishing

# Set the original data path (the one to be converted)
rm(combined_data)

if(socioecon_scen == "nat"){
  load("/Users/jepa88/Library/CloudStorage/OneDrive-UBC/Data/FishMIP_2022_3a_Protocol/Results/Rdata/No_Fishing_Abd_data.RData")
  sizes <-  "tcb" # abundance tcb or catch tc
  print("nat")
}else{
  if(sizes == "tcb"){
    load("/Users/jepa88/Library/CloudStorage/OneDrive-UBC/Data/FishMIP_2022_3a_Protocol/Results/Rdata/Fishing_Abd_data.RData")
    print("tcb")
  }else{
    load("/Users/jepa88/Library/CloudStorage/OneDrive-UBC/Data/FishMIP_2022_3a_Protocol/Results/Rdata/Fishing_Catch_data.RData")
    print("mcp")
  }
}

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
    scen_clim = climate_scen,
    scen_soc = socioecon_scen,
    var = sizes
  )
  
}

## ------------------- ##
#  END ROUTINE 
## ------------------- ##



# ---------------- TESTING FUNCTION RESULT -------------- #

netcdf_files <- list.files(paste0(save_path,"/obsclim/"), full.names = F, pattern = ".nc")

# Explore data

# nc <- nc_open(list.files(paste0(save_path,"/obsclim/"), full.names = T, pattern = ".nc")[5])
# nc


# Create plots

for(i in 1:length(netcdf_files)){
  ncd_df <- metR::ReadNetCDF(paste0(save_path,"/obsclim/",netcdf_files[i]))
  # ncd_df
  
  # total_sum <-ncd_df %>% 
  #   select(1:3,"value" = 4) %>% 
  #   group_by(time) %>% 
  #   summarise(
  #     sum_value = sum(value,na.rm = T)
  #   ) %>% 
  #   group_by() %>% 
  #   summarise(sum(sum_value))
  
  # print(total_sum)
  ncd_df %>%
      select(1:3,"value" = 4) %>%
    group_by(time) %>%
    summarise(
      sum_value = sum(value,na.rm = T)
    ) %>%
  ggplot() +
    geom_line(
      aes(
        x = time,
        y = sum_value
      )
    )


  ggsave(filename = paste0(save_path,"/obsclim/figures/",netcdf_files[i],"_line_plot.png"),
         plot = last_plot(),
         width = 10
  )


  ncd_df %>%
    select(1:3,"value" = 4) %>%
    mutate(year = year(time)) %>%
    filter(year %in% c(start_time,end_time)) %>%
    ggplot() +
    geom_tile(
      aes(
        x = lon,
        y = lat,
        fill = log10(value),
        color = log10(value)
      )
    ) +
    facet_wrap(~year) +
    scale_fill_viridis_b() +
    scale_color_viridis_b()

  ggsave(filename = paste0(save_path,"/obsclim/figures/",netcdf_files[i],"_map_plot.png"),
         plot = last_plot(),
         width = 10
  )
  
}




