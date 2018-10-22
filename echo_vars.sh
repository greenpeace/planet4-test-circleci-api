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
echo "We will echo the TESTVAR3 variable . We have not defined it, so it will only show something if API works ok"
echo ""

echo $TESTVAR3
