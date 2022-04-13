#!/usr/bin/env bash

MOTIVATIONS=$(curl -s 'https://gofuckingwork.com/quotes.json' | jq -c -r '[.language.en[] | if length == 2 then .[0] else . end] | join(":")')

IFS=':' read -ra QUOTES <<< "$MOTIVATIONS"
index=$(shuf -i 1-${#QUOTES[@]} -n 1)

echo "${QUOTES[$index-1]}"
