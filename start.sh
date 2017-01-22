#!/bin/ash
#
# @author masterforweb

#add task cron
crontab -l | { cat; echo "55    00       *       *       *       /indexer.sh > /tmp/indexer.log"; } | crontab -

# start crond
/usr/sbin/crond -f -L 8

# start index
indexer --all --rotate "$@"

# start demon search
exec searchd --nodetach "$@"

