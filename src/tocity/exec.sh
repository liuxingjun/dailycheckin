#!/bin/bash
PWD=$(dirname "$(readlink -f "$0")")

envsubst < $PWD/data.txt | curl -s -L -X POST \
-H 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode @- \
ttp://member.gph5.com/hq_member/Record!signIn