#!/bin/bash
set -e

PWD=$(dirname "$(readlink -f "$0")")
url="https://mobile-api.xgimi.com/app/v4/integral/signin"
request='{"configNo":"2021061111211168"}'
output=$(envsubst < "$PWD/headers.txt" | curl -s -L -X POST -H @- -d "$request" $url)

if ! jq -e '.code == "ok"' <<< "$output" > /dev/null; then
  echo "xgimi signin error:$output"
  exit 1
fi

echo "xgimi signin succeed:$output"
exit 0
