#!/bin/bash -e
rm -rf .gen src/gen
mkdir -p .gen src/gen
(cd /usr/include/ ; find gsl -type f ) | sed -e "s-^-#include <-" -e "s-\$->-" >.gen/gen.c
(cd .gen;gcc gen.c -fdump-ada-spec -c -fada-spec-parent=GSL.Low_Level)
cp .gen/*gsl_gsl_*.ads src/gen
sed -f sed/all.sed src/gen/*.ads -i
gprbuild -p -j0
chmod -w src/gen/*.ads
rm -rf .gen
