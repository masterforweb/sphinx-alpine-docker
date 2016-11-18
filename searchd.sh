#!/bin/ash

#
# @author masterforweb

indexer --all --rotate "$@"
exec searchd --nodetach "$@"