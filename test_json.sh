#!/usr/bin/env bash
set -euo pipefail

var=${1:-MyVar}
value=${2:-MyValue}

user=${CIRCLE_PROJECT_USERNAME:-greenpeace}
repo=${GITHUB_REPOSITORY_NAME:-planet4-test-circleci-api}

job=${1:-echo-vars-job}

echo ""
echo "User:    ${user}"
echo "Project: ${repo}"

echo "Var:     ${var}"
echo "Value:   ${value}"

json="{
  \"build_parameters\": {\"CIRCLE_JOB\": \"$job\", \"$var\": \"$value\" }
}"
echo ""
echo "The json is"
echo $json
echo ""

build_num=$(echo $json | jq '.build_parameters')

echo "The build number is $build_num"
