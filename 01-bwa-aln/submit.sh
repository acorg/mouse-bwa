#!/bin/bash -e

#SBATCH -J bwa-aln
#SBATCH -A ACORG-SL2-CPU
#SBATCH -o slurm-%A.out
#SBATCH -p skylake
#SBATCH --time=01:00:00

task=$1

srun -n 1 bwa-aln.sh $task
