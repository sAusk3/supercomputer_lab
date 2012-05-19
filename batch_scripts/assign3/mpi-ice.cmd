#!/bin/bash

#SBATCH -o /home/cluster/h039v/h039val/assign3/batch_result/heat.$JOB_ID.out
#SBATCH -D /home/cluster/h039v/h039val
#SBATCH -J mpi-ice
#SBATCH --clusters=ice1
#SBATCH --get-user-env
#SBATCH --ntasks=16
#SBATCH --mail-type=end
#SBATCH --mail-user=gaurav.kukreja@tum.de
#SBATCH --export=NONE
#SBATCH --time=08:00:00

source /etc/profile.d/modules.sh

srun_ps /home/cluster/h039v/h039val/assign3/supercomputer/batch_scripts/assign3/run-mpi-test.sh ice > /home/cluster/h039v/h039val/assign3/tmp/out_ice_script.$JOB_ID.out

