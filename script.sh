#!/bin/bash
set -eo pipefail
DIRS="about-me astral-branding contact logos miami-poster noahs-arch-montage photography stream sutton-print venomous-vodka-brand-guidelines wasted-menu"
FILE=4fb34317-63d8-45a1-bb60-73f1537927ff_rwc_0x13x2908x2273x32.png

for dir in $DIRS
do
  sed -i.bak "s/\/$dir\/files\/$FILE/\/files\/$FILE/g" "$dir/index.html"
  rm "$dir/index.html.bak"
  [ -f "$dir/files/$FILE" ] && rm "$dir/files/$FILE"
done
