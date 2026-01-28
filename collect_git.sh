#!/bin/bash
# shellcheck disable=SC2028

echo "\\newcommand{\\gitcommit}[0]{$(git rev-parse --short HEAD)}" > variables.tex

if [ "${GITHUB_ACTIONS:-}" = "true" ]; then
    git_ref="$(git rev-parse --short HEAD)"
else
    git_ref="main"
fi
echo "\\newcommand{\\giturl}[0]{https://github.com/louisradtke/cv/tree/${git_ref}}" >> variables.tex
