#!/bin/bash

# Zachary Ducharme 11/10/19
#
## Take snapshots of usernames each hour for comparison.
#

DATE=$(date +%d-%m-%Y)
BACKUP_DIR=snapshot_backups
tar cvf $BACKUP_DIR/UserSnapshot-$DATE.tar.gz /etc/passwd

# END 
