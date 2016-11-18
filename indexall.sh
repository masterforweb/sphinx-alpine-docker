#!/bin/ash
#
# @author masterforweb

indexer --all --rotate "$@"
./searchd.sh
