# Settings file for converting DBEM
# .txt files to .Rdata files
# Juliano Palacios
library(parallel)

variables <- c("Abd")

spplist <- read.table("~/projects/rrg-wailung/jepa/R/Data/Species/SppTaxonName.txt")

# Partial fix for not working species
# spplist <- dplyr::filter(spplist, V1 %in% c("603310","604708"))

stryr <- 1841
endyr <- 2010

out_path <- "/home/jepa/scratch/Results/R/"

# Call function
source("~/projects/rrg-wailung/jepa/R/Scripts/dbem_txt_to_rdata.R")

# Call function for scenarios in Settings file
lapply(variables,
       convert_fx,
       year_one = 1981,
       year_end = 2010
)
