#!/usr/bin/env bash
set -euo pipefail

var=${1:-MyVar}
value=${2:-MyValue}

user=${CIRCLE_PROJECT_USERNAME:-greenpeace}
repo=${GITHUB_REPOSITORY_NAME:-planet4-test-circleci-api}

job=echo-vars-job

echo ""
echo "User:    ${user}"
echo "Project: ${repo}"

echo "Vef:     ${var}"
echo "Value:   ${value}"

json="{
  \"build_parameters\": {\"CIRCLE_JOB\": \"$job\", \"$var\": \"$value\" }
}"
echo ""
echo "The json is"
echo $json
echo ""
curl \
  --header "Content-Type: application/json" \
  -d "$json" \
  -u "${CIRCLE_TOKEN}:" \
  -X POST \
  https://circleci.com/api/v1.1/project/${VCS_TYPE:-github}/${user}/${repo}/tree/master