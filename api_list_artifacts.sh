#!/usr/bin/env bash
set -euo pipefail

user=${CIRCLE_PROJECT_USERNAME:-greenpeace}
repo=${GITHUB_REPOSITORY_NAME:-planet4-base-fork}
build_nr=${CIRCLE_BUILD_NR:-1341}
job=${1:-echo-vars-job}

echo ""
echo "User:    ${user}"
echo "Project: ${repo}"

reply_json=$(curl \
  --header "Content-Type: application/json" \
  -u "${CIRCLE_TOKEN}:" \
  -X GET \
  https://circleci.com/api/v1.1/project/${VCS_TYPE:-github}/${user}/${repo}/${build_nr}/artifacts)

echo "The reply json is $reply_json"

#build_num=$(echo $reply_json | jq '.build_num')

#echo "The build number is $build_num"
