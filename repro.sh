#!/bin/bash
uv run sleep.py 3 &
pid="$!"
sleep 1
sudo env "PATH=$PATH" uv run py-spy dump --pid "$pid"
wait
