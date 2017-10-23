#!/bin/bash
#SBATCH -A k1242
#SBATCH -J @JOBNAME@
#SBATCH -N @NUMNODE@
#SBATCH -t 1-00:00:00
#SBATCH -e job%J.err
#SBATCH -o job%J.out
#SBATCH -p workq
#SBATCH --ntasks-per-node=32
#SBATCH --ntasks-per-socket=16

OMP_NUM_THREADS=1

srun --hint=nomultithread pasr
