#!/bin/bash

# shellcheck disable=SC2028
echo "\\newcommand{\\gitcommit}[0]{$(git rev-parse --short HEAD)}" > variables.tex

# shellcheck disable=SC2028
echo "\\newcommand{\\giturl}[0]{https://github.com/louisradtke/cv/tree/$(git rev-parse --short HEAD)}" >> variables.tex
