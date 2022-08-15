#!/bin/bash -l
#SBATCH --job-name=10cm_model_Ga_68
# speficity number of nodes 
#SBATCH -N 1

# specify number of tasks/cores per node required
#SBATCH --ntasks-per-node 20

# specify the walltime e.g 20 mins
#SBATCH -t 24:00:00

# set to email at start,end and failed jobs
#SBATCH --mail-type=ALL
#SBATCH --mail-user=aidan.burns@ucdconnect.ie
#SBATCH --exclusive
# run from current directory
cd $SLURM_SUBMIT_DIR

# command to use
module load taskfarm
taskfarm /home/people/17424002/EGSnrc/egs_home/Tissue_Model
~/EGSnrc/HEN_HOUSE/scripts/egs-parallel.sh 20 Tissue_Model -i Tissue_Model_10cm_Ga_68.egsinp  > Tissue_Model_10cm_Ga_68.egsinp.txt


