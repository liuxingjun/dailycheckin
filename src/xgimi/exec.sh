#!/bin/bash
set -e

PWD=$(dirname "$(readlink -f "$0")")

envsubst < $PWD/headers.txt | curl -s -L -X POST \
-H @- \
-d '{"configNo":"2021061111211168"}' \
https://mobile-api.xgimi.com/app/v4/integral/signin