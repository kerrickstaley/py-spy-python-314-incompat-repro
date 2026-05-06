#!/bin/bash
uv run python -c ''  # init venv
sudo env "PATH=$PATH" bash <<'EOF'
uv run py-spy --version
uv run python --version
uv run sleep.py 3 &
pid="$!"
sleep 1
uv run py-spy dump --pid "$pid"
wait
EOF
