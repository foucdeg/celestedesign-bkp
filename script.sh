#!/bin/bash
set -eo pipefail
DIRS="about-me astral-branding contact logos miami-poster noahs-arch-montage photography stream sutton-print venomous-vodka-brand-guidelines wasted-menu"
FILE=$1

for dir in $DIRS
do
  sed -i.bak "s/\/$dir\/files\/$FILE/\/files\/$FILE/g" "$dir/index.html"
  rm "$dir/index.html.bak"
  [ -f "files/$FILE" ] || ([ -f "$dir/files/$FILE" ] && mv "$dir/files/$FILE" "files/$FILE")
  [ -f "$dir/files/$FILE" ] && rm "$dir/files/$FILE"
done
