# Settings file for converting DBEM
# .txt files to .Rdata files
# Juliano Palacios

# Load required functions
library(here)
library(tidyverse)

variables <- c("Abd")

# Partial fix for not working species
# spplist <- dplyr::filter(spplist, V1 %in% c("603310","604708"))

stryr <- 1841
endyr <- 2010

# Scenario to call (Note this will determine the results directory)
scen <- "No_fishing"

spplist <- list.files(paste0("~/projects/def-wailung/CMIP6/DBEM_outputs/FishMIP_outputs/",scen))

# Load required functions
source(here("functions/convert_fx.R")) # Load a bunch of packages

# Call function for scenarios in Settings file
lapply(variables,
       convert_fx,
       year_one = stryr,
       year_end = endyr,
       scen = scen
)
