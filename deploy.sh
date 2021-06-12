#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

rm -rf public
hugo
cd public
git init
git add .
git commit -m "site update"
git push -f git@github.com:refparo/refparo.github.io.git master
