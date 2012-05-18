#!/bin/bash

#SBATCH -o /home/cluster/h039v/h039val/workspace/batch/heat.$JOB_ID.out
#SBATCH -D /home/cluster/h039v/h039val
#SBATCH -J heat-parallel
#SBATCH --clusters=ice1
#SBATCH --get-user-env
#SBATCH --ntasks=8
#SBATCH --mail-type=end
#SBATCH --mail-user=gaurav.kukreja@tum.de
#SBATCH --export=NONE
#SBATCH --time=08:00:00

source /etc/profile.d/modules.sh

srun_ps /home/cluster/h039v/h039val/workspace/parallel-tars/run-parallel-tests-ice.sh > /home/cluster/h039v/h039val/workspace/batch/out.$JOB_ID.out 

