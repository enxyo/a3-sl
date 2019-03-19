#!/usr/bin/bash
# /!\/!\/!\ change name as you like and duplicate as often as you want. /!\/!\/!\
# /!\/!\/!\ change file name in a3-restart.js                           /!\/!\/!\

cd /home/steam/arma3server/
tmux new-session -d -s hc1 './arma3server -client -connect=xxx.xxx.xxx.xxx -port=2302 -password=password -mod=mods/\@cba\;mods/\@ace\;mods/\@rhsusaf\;mods/\@rhsafrf\;mods/\@rhsgref\;mods/\@rhsgref_compat\;mods/\@rhsafrf_compat\;mods/\@rhsusaf_compat\;mods/\@aem\;mods/\@stui\;mods/\@tfar\;'
