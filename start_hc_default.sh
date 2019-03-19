#!/usr/bin/bash

# /!\/!\/!\ change file name to start_hc.sh /!\/!\/!\

case "$1" in
hc1)
    tmux has-session -t hc1 2>/dev/null
    if [ "$?" -eq 1 ] ; then
        cd /home/steam/arma3server/
        tmux new-session -d -s hc1 './arma3server -client -connect=xxx.xxx.xxx.xxx -port=2302 -password=password -mod=mods/\@cba\;mods/\@ace\;mods/\@rhsusaf\;mods/\@rhsafrf\;mods/\@rhsgref\;mods/\@rhsgref_compat\;mods/\@rhsafrf_compat\;mods/\@rhsusaf_compat\;mods/\@aem\;mods/\@stui\;mods/\@tfar\;'
        echo "starting hc1 ..."
    else
        echo "hc1 is already running!"
    fi
;;
hc2)
    tmux has-session -t hc2 2>/dev/null
    if [ "$?" -eq 1 ] ; then
        cd /home/steam/arma3server/
        tmux new-session -d -s hc2 './arma3server -client -connect=xxx.xxx.xxx.xxx -port=2302 -password=password -mod=mods/\@cba\;mods/\@ace\;mods/\@rhsusaf\;mods/\@rhsafrf\;mods/\@rhsgref\;mods/\@rhsgref_compat\;mods/\@rhsafrf_compat\;mods/\@rhsusaf_compat\;mods/\@aem\;mods/\@stui\;mods/\@tfar\;'
        echo "starting hc2 ..."
    else
        echo "hc2 is already running!"
    fi
;;
hc3)
    tmux has-session -t hc3 2>/dev/null
    if [ "$?" -eq 1 ] ; then
        cd /home/steam/arma3server/
        tmux new-session -d -s hc3 './arma3server -client -connect=xxx.xxx.xxx.xxx -port=2302 -password=password -mod=mods/\@cba\;mods/\@ace\;mods/\@rhsusaf\;mods/\@rhsafrf\;mods/\@rhsgref\;mods/\@rhsgref_compat\;mods/\@rhsafrf_compat\;mods/\@rhsusaf_compat\;mods/\@aem\;mods/\@stui\;mods/\@tfar\;'
        echo "starting hc3 ..."
    else
        echo "hc3 is already running!"
    fi
;;
*)
    echo "Usage: {hc1|hc2|hc3}" >&2
    exit 1
;;
esac
exit 0
