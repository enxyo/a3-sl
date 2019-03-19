#!/usr/bin/bash

case "$1" in
hc1)
    echo "stopping hc1 ..."
    tmux kill-session -t hc1
;;
hc2)
    echo "stopping hc2 ..."
    tmux kill-session -t hc2
;;
hc3)
    echo "stopping hc3 ..."
    tmux kill-session -t hc3
;;
*)
    echo "Usage: {hc1|hc2|hc3}" >&2
    exit 1
;;
esac
exit 0
