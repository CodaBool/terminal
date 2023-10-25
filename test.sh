#!/bin/bash

inside_section=false
changelog_lines=""
while IFS= read -r line; do
  if [[ $line == "==="* ]]; then
    if [ "$inside_section" = false ]; then
      inside_section=true
    else
      break  # Exit the loop
    fi
  fi
  if [ "$inside_section" = true ] && [[ $line == "- "* ]]; then
    changelog_lines="$changelog_lines$line"$'\n'
  fi
done < changelog.txt

printf "changes=%s\n" "$changelog_lines"