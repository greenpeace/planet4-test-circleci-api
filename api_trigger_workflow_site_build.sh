#!/usr/bin/env bash
set -euo pipefail

ref=${1:-branch}
value=${2:-develop}

user=${CIRCLE_PROJECT_USERNAME:-greenpeace}
repo=${GITHUB_REPOSITORY_NAME:-planet4-koyantestdash}

echo ""
echo "User:    ${user}"
echo "Project: ${repo}"

echo "Ref:     ${ref}"
echo "Value:   ${value}"

json="{
  \"$ref\": \"$value\"
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
  https://circleci.com/api/v1.1/project/${VCS_TYPE:-github}/${user}/${repo}/build
