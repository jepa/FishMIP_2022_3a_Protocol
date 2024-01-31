library(dplyr)
library(data.table)

aggregate_fx <- function(data_path){
  
  # Load run
  load(data_path)
  
  # Load results
  # results_df <- my_path("R",name = "aggregated_data.csv", read = T)
  # print(sum(results_df$value))
  
  # Load results for CEDAR
  results_df <- fread("/home/jepa/projects/rrg-wailung/jepa/R/Data/fishmip/aggregated_data.csv", header = T)
  
  # Transform to DF
  x <- as.data.frame(data)
  colnames(x) <- seq(1841,2010)
  
  df <- x %>% 
    bind_cols(dbem_cords) %>% 
    gather("year","value",`1841`:`2010`) %>% 
    # mutate(value = 0) # for creating empty df
    select(index,year,value) %>% 
    mutate(year = as.numeric(year),
           value = replace_na(value,0)
    ) %>% 
    left_join(results_df,
              by = c("index","year")
    ) %>% 
    mutate(value = value.x + value.y) %>% 
    select(index,year,value)
  
  # Write new df
  write_csv(df, "/home/jepa/projects/rrg-wailung/jepa/R/Data/fishmip/aggregated_data.csv")
  
}


# Call species list
dbem_cords <- read.csv("/home/jepa/projects/rrg-wailung/jepa/R/Data/dbem/Lon_Lat_DBEM.txt", header = T)
colnames(dbem_cords) <- c("index","lon","lat")

# List of files to read
dbem_files <- list.files("/~/scratch/Results/R/fishmip3aF0/", full.names = T)

# Run function
lapply(dbem_files, aggregate_fx)
