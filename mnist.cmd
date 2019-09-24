#!/bin/bash
#SBATCH --job-name=tf-test       # create a short name for your job
#SBATCH --nodes=1                # node count
#SBATCH --ntasks=1               # total number of tasks across all nodes
#SBATCH --cpus-per-task=1        # cpu-cores per task (>1 if multithread tasks)
#SBATCH --mem-per-cpu=4G         # memory per cpu-core
#SBATCH --time=00:05:00          # total run time limit (HH:MM:SS)
#SBATCH --gres=gpu:1             # number of gpus per node
#SBATCH --mail-type=begin        # send email when job begins
#SBATCH --mail-type=end          # send email when job ends
#SBATCH --mail-user=YourNetID@princeton.edu

module load anaconda3
source activate tf-gpu

srun python mnist_classify.py
