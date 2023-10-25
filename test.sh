#!/bin/bash

changelog_contents=""
inside_section=false
while IFS= read -r line; do
  if [[ $line == "# Version "* ]]; then
    if [ "$inside_section" = false ]; then
      inside_section=true
    else
      break
    fi
  fi
  if [ "$inside_section" = true ] && [[ $line != "# Version"* ]]; then
    changelog_contents="$changelog_contents$line"$'\n'
  fi
done < changelog.md
echo "$changelog_contents" > latest.md
