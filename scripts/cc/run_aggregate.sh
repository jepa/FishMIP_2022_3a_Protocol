#!/bin/bash                                                                     
#SBATCH --job-name=ADRD_R                                                       
#SBATCH --account=def-wailung                                                   
#SBATCH --nodes=1 # number of node MUST be 1                                    
#SBATCH --cpus-per-task=4        # number of processes                          
#SBATCH --mem-per-cpu=2G                                                                
#SBATCH -t 00-05:00:00                                                         
#SBATCH --mail-user=j.palacios@oceans.ubc.ca                                    
#SBATCH --mail-type=ALL
#SBATCH --output=/home/jepa/projects/def-wailung/jepa/FishMIP_2022_3a_Protocol/slurm_out/agg_slurm_%j.out # Specify the full path with the desired file name prefix


# ---------------------------------------------------------------------         
echo "Current working directory: `pwd`"
echo "Starting run at: `date`"
# ---------------------------------------------------------------------         


module load gcc/9.3.0 r/4.3.1
export R_LIBS=~/local/R_libs/
Rscript aggregate_protocol.R Settings.R$SLURM_ARRAY_TASK_ID