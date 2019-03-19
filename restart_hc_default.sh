#!/usr/bin/bash

case "$1" in
hc1)
    echo "stopping hc1 ..."
    tmux kill-session -t hc1
    sleep 5
    cd /home/steam/arma3server/
    tmux new-session -d -s hc1 './arma3server -client -connect=xxx.xxx.xxx.xxx -port=2302 -password=password -mod=mods/\@cba\;mods/\@ace\;mods/\@rhsusaf\;mods/\@rhsafrf\;mods/\@rhsgref\;mods/\@rhsgref_compat\;mods/\@rhsafrf_compat\;mods/\@rhsusaf_compat\;mods/\@aem\;mods/\@stui\;mods/\@tfar\;'
    echo "starting hc1 ..."
;;
hc2)
    echo "stopping hc2 ..."
    tmux kill-session -t hc2
    sleep 5
    cd /home/steam/arma3server/
    tmux new-session -d -s hc2 './arma3server -client -connect=xxx.xxx.xxx.xxx -port=2302 -password=password -mod=mods/\@cba\;mods/\@ace\;mods/\@rhsusaf\;mods/\@rhsafrf\;mods/\@rhsgref\;mods/\@rhsgref_compat\;mods/\@rhsafrf_compat\;mods/\@rhsusaf_compat\;mods/\@aem\;mods/\@stui\;mods/\@tfar\;'
    echo "starting hc2 ..."
;;
hc3)
    echo "stopping hc3 ..."
    tmux kill-session -t hc3
    sleep 5
    cd /home/steam/arma3server/
    tmux new-session -d -s hc3 './arma3server -client -connect=xxx.xxx.xxx.xxx -port=2302 -password=password -mod=mods/\@cba\;mods/\@ace\;mods/\@rhsusaf\;mods/\@rhsafrf\;mods/\@rhsgref\;mods/\@rhsgref_compat\;mods/\@rhsafrf_compat\;mods/\@rhsusaf_compat\;mods/\@aem\;mods/\@stui\;mods/\@tfar\;'
    echo "starting hc3 ..."
;;
*)
    echo "Usage: {hc1|hc2|hc3}" >&2
    exit 1
;;
esac
exit 0
