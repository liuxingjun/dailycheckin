#!/bin/bash
set -e

PWD=$(dirname "$(readlink -f "$0")")

curl -s -L -X POST \
-H 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode "userid=$XINGCHENG_USERID" \
--data-urlencode "openid=$XINGCHENG_OPENID" \
http://member.gph5.com/hq_member/Record!signIn