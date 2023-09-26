# Shell loop

#!/bin/bash

# Replace 'your_remote_username' and 'your_remote_server_ip' with the actual username and IP address of the remote server.
# Replace '/path/to/files/' with the actual path to the directory where the files are located on the remote server.
# Replace '/path/on/your/computer/' with the local directory where you want to save the transferred files.

files=("gfdl-mom6-cobalt2_ctrlclim_o2-bot_30arcmin_global_monthly_1961_2010.nc" "gfdl-mom6-cobalt2_ctrlclim_o2-surf_30arcmin_global_monthly_1961_2010.nc" "gfdl-mom6-cobalt2_ctrlclim_ph-bot_30arcmin_global_monthly_1961_2010.nc" "gfdl-mom6-cobalt2_ctrlclim_o2-bot_30arcmin_global_monthly_1961_2010.nc" "gfdl-mom6-cobalt2_ctrlclim_o2-surf_30arcmin_global_monthly_1961_2010.nc" "gfdl-mom6-cobalt2_ctrlclim_ph-bot_30arcmin_global_monthly_1961_2010.nc" "gfdl-mom6-cobalt2_ctrlclim_ph-surf_30arcmin_global_monthly_1961_2010.nc" "gfdl-mom6-cobalt2_ctrlclim_so-bot_30arcmin_global_monthly_1961_2010.nc" "gfdl-mom6-cobalt2_ctrlclim_so-surf_30arcmin_global_monthly_1961_2010.nc" "gfdl-mom6-cobalt2_ctrlclim_tob_30arcmin_global_monthly_1961_2010.nc" "gfdl-mom6-cobalt2_ctrlclim_tos_30arcmin_global_monthly_1961_2010.nc" "gfdl-mom6-cobalt2_ctrlclim_siconc_30arcmin_global_monthly_1961_2010.nc" "gfdl-mom6-cobalt2_ctrlclim_uo_30arcmin_global_monthly_1961_2010.nc" "gfdl-mom6-cobalt2_ctrlclim_vo_30arcmin_global_monthly_1961_2010.nc" "gfdl-mom6-cobalt2_ctrlclim_intppdiat_30arcmin_global_monthly_1961_2010.nc" "gfdl-mom6-cobalt2_ctrlclim_intppdiaz_30arcmin_global_monthly_1961_2010.nc" "gfdl-mom6-cobalt2_ctrlclim_intpppico_30arcmin_global_monthly_1961_2010.nc")

for file in "${files[@]}"
do
    scp -r b381132@levante.dkrz.de:/work/bb0820/ISIMIP/ISIMIP3a/SecondaryInputData/climate/ocean/ctrlclim/global/monthly/historical/GFDL-MOM6-COBALT2/"$file" /Volumes/Enterprise/Data/FishMip/COBALT2/
done

