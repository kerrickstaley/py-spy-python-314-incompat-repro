#!/bin/bash
uv run python -c ''  # init venv
sudo env "PATH=$PATH" bash <<'EOF'
uv run py-spy --version
uv run python --version
uv run sleep.py 3 &
uv_pid="$!"
echo "uv_pid=$uv_pid"
python_pid="$(pgrep -P $uv_pid)"
echo "python_pid=$python_pid"
sleep 1
uv run py-spy dump --pid "$python_pid"
wait
EOF
