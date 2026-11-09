#!/bin/bash
#SBATCH --job-name=ft_moshi
#SBATCH --output=ft_log.out
#SBATCH --error=ft_log.err
#SBATCH --nodes=1
#SBATCH --gres=gpu:8
#SBATCH --cpus-per-task=32
#SBATCH --mem=0

# Execute your existing uv run script inside the allocation
bash run_together.sh
