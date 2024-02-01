#!/bin/bash                                                                     
#SBATCH --job-name=ADRD_R                                                       
#SBATCH --account=rrg-wailung                                                   
#SBATCH --nodes=1 # number of node MUST be 1                                    
#SBATCH --ntasks=4                                                              
#SBATCH --cpus-per-task=4        # number of processes                          
#SBATCH --mem=3G                                                                
#SBATCH -t 00-00:30:00                                                         
#SBATCH --mail-user=j.palacios@oceans.ubc.ca                                    
#SBATCH --mail-type=ALL                                                         


# ---------------------------------------------------------------------         
echo "Current working directory: `pwd`"
echo "Starting run at: `date`"
# ---------------------------------------------------------------------         


module load gcc/9.3.0 r/4.0.2
export R_LIBS=~/local/R_libs/
Rscript ./scripts/compute_canada/conversion_settings.R Settings.R$SLURM_ARRAY_TASK_ID