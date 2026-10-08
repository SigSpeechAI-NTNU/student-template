#!/usr/bin/env bash
# 用法：uv run scripts/run.sh configs/<run_id>.yaml
# 跑之前先 commit，然後把 commit hash 記進 results/results.csv
set -euo pipefail
CONFIG="${1:?用法: uv run scripts/run.sh configs/<run_id>.yaml}"
RUN_ID="$(basename "${CONFIG}" .yaml)"
echo "run_id=${RUN_ID}  git=$(git rev-parse --short HEAD)  python=$(python -V 2>&1)"
# 〔把你的訓練／評測指令放這裡；在 uv run 底下，python 就是 .venv 的〕
