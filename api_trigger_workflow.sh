#!/usr/bin/env bash
set -euo pipefail

ref=${1:-branch}
value=${2:-master}

user=${CIRCLE_PROJECT_USERNAME:-greenpeace}
repo=${GITHUB_REPOSITORY_NAME:-planet4-test-circleci-api}

echo "User:    ${user}"
echo "Project: ${repo}"

echo "Ref:     ${ref}"
echo "Value:   ${value}"

json="{
  \"$ref\": \"$value\"
}"

curl \
  --header "Content-Type: application/json" \
  -d "$json" \
  -u "${CIRCLE_TOKEN}:" \
  -X POST \
  https://circleci.com/api/v1.1/project/${VCS_TYPE:-github}/${user}/${repo}/build
