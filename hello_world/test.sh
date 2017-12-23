#!/bin/bash - 
#===============================================================================
#
#          FILE: test.sh
# 
#         USAGE: ./test.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 23/08/16 16:07
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
sleep 5
if curl web | grep -q '<b>Visits:</b> '; then
    echo "Tests passed!"
    exit 0
else
    echo "Tests failed!"
    exit 1
fi

