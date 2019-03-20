#!/usr/bin/bash

case "$1" in
hc1)
    tmux has-session -t hc1 2>/dev/null
    if [ "$?" -eq 1 ] ; then
        echo "hc1 ... not running"
    else
        echo "hc1 ... running"
    fi
;;
hc2)
    tmux has-session -t hc2 2>/dev/null
    if [ "$?" -eq 1 ] ; then
        echo "hc2 ... not running"
    else
        echo "hc2 ... running"
    fi
;;
hc3)
    tmux has-session -t hc3 2>/dev/null
    if [ "$?" -eq 1 ] ; then
        echo "hc3 ... not running"
    else
        echo "hc3 ... running"
    fi
;;
all)
    tmux has-session -t hc1 2>/dev/null
    if [ "$?" -eq 1 ] ; then
        echo "hc1 ... not running"
    else
        echo "hc1 ... running"
    fi

    tmux has-session -t hc2 2>/dev/null
    if [ "$?" -eq 1 ] ; then
        echo "hc2 ... not running"
    else
        echo "hc2 ... running"
    fi

    tmux has-session -t hc3 2>/dev/null
    if [ "$?" -eq 1 ] ; then
        echo "hc3 ... not running"
    else
        echo "hc3 ... running"
    fi
;;
*)
    echo "Usage: {hc1|hc2|hc3|all}" >&2
    exit 1
;;
esac
exit 0
