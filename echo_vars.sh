#!/usr/bin/env bash
set -e

export TESTVAR=mytestvar

echo ""
echo "We will echo the TESTVAR variable . It should return mytestvar"
echo ""

echo $TESTVAR

echo ""
echo "We will echo the JOB_ENV_CONSTANT1 variable."
echo ""

echo $JOB_ENV_CONSTANT1

echo ""
echo "We will echo the PROJECT_ENV_VALUE1 variable. It is defined in the project settings"
echo ""

echo $PROJECT_ENV_VALUE1


echo ""
echo "We will echo the PROJECT_ENV_VALUE2 variable. We have not defined it beforehand, but we will send it via the api"
echo ""

echo $PROJECT_ENV_VALUE2

echo ""
echo "We will echo the Org Context variable TEST_CI_API variable."
echo ""

echo $TEST_CI_API