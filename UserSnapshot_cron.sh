#!/bin/bash

# Zachary Ducharme 11/10/19
#
## Take snapshots of usernames each hour for comparison.
#

cronjob -e 0 24 0 0 0 /etc/passwd > /var/log/username_snap%0.log
diff -ur /etc/passwd /var/log/usernamesnap%0.log > usernamesnap%0.log

# END
