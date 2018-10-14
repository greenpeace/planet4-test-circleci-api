#!/usr/bin/env bash
set -e

export TESTVAR=mytestvar

echo ""
echo "We will echo the TESTVAR variable . It should return mytestvar"
echo ""

echo $TESTVAR

echo ""
echo "We will echo the TESTVAR2 variable . We have not defined it, so it will only show something if API works ok"
echo ""

echo $TESTVAR2

echo ""
echo "We will echo the TESTVAR3 variable . We have not defined it, so it will only show something if API works ok"
echo ""

echo $TESTVAR3
