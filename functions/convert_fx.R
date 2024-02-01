convert_fx <- function(year_one = 1841,year_end = 2010,var){
  
  # Set the path to the directory containing your CSV files
  directory_path <- "/home/jepa/scratch/Results/R/fishmip3af0a/"
  
  # Create an empty list to store data frames
  data_list <- list()
  
  # Loop through the years (assuming file names are like "data_1941.csv", "data_1942.csv", etc.)
  for (year in year_one:year_end) {
    file_path <- paste0(directory_path, "agg_", var,"_",year, ".csv")
    data <- read.csv(file_path,header = F)
    data_list[[year]] <- data
  }
  
  # Combine data frames into a single list
  combined_data <- bind_cols(data_list)
  colnames(combined_data) <- seq(year_one,year_end,1)
  
  # Save the combined data as .RData
  save(combined_data, file = paste0("/home/jepa/scratch/Results/R/fishmip3af0a/",var,"_data.RData"))
  
  # Remove individual data frames if desired
  rm(data_list)
}