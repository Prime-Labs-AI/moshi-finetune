#!/bin/bash

pip install uv

export PATH="$HOME/.local/bin:$PATH"

uv pip install --python /home/tolulope/moshi-finetune/.venv wandb

# Force uv to pull dependencies down ignoring old cache fragments
uv sync --refresh

# Execute the distributed runner
uv run torchrun \
    --nproc-per-node=8 \
    --master_port=$((RANDOM % 1000 + 20000)) \
    -m train example/moshi_7B.yaml
