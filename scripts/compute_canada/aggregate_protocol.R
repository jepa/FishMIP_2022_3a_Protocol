
# Load required functions
library(here)

source(here("functions/load_libs_fx.R")) # Load a bunch of packages
source(here("functions/aggr_data_fx.R")) # Aggregstes data for FishMip

# Load packages
pckgs <- c("tidyverse","data.table","dbemImport","foreach","doParallel")
load_libs(pckgs)

# ---------------- #
# Global Variables 
# ---------------- #

varaibles <- c("Abd")

# Scenario to call (Note this will derermine the results directory)
scen <- "fishmip3af0b"

# Years to load
yrs <- c(seq(1841,
             2010)
         )

# Set path to read data from
dbem_path <- "~/scratch/Results/"
# DBEM_Path <- "/Volumes/HALL2000/Data/FishMipMPA/Results" # For testing

# Set a path for saving results
result_path <- paste("~/scratch/Results/R/",scen,"/",sep = "")
# Result_Path <- "./Data" # For testing

if(dir.exists(result_path)==F){
  dir.create(result_path)
}else{
  result_path = result_path
}

# Species List
spplist <- list.files(paste0("/home/jepa/scratch/Results/",scen))

# dbem index
dbem_cords <- read.csv("~/projects/rrg-wailung/jepa/R/Data/dbem/Lon_Lat_DBEM.txt", header = F)
colnames(dbem_cords) <- c("index","lon","lat")

## For parallelyzing in CC
# Use the environment variable SLURM_CPUS_PER_TASK to set the number of cores.
# This is for SLURM. Replace SLURM_CPUS_PER_TASK by the proper variable for your system.
# Avoid manually setting a number of cores.
ncores = Sys.getenv("SLURM_CPUS_PER_TASK") 

registerDoParallel(cores=ncores)# Shows the number of Parallel Workers to be used
print(ncores) # this how many cores are available, and how many you have requested.
getDoParWorkers()# you can compare with the number of actual workers



# ---------------- #
# Call Routine to aggregate and save data
# ---------------- #

# Run function for one year
# aggr_data(1950,spplist)

# Run function for all years
# lapply(yrs, aggr_data, spplist)

# Run in parallel
foreach(y=1:length(yrs)) %dopar% {aggr_data(yrs[y],spplist,var = varaibles)}