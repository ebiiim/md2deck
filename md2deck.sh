#!/bin/sh

echo "\n!!! Deprecated. Use Python version md2deck instead. !!!\n"

cd "$(dirname "$0")" || exit

u="Usage: ./md2deck DIR SLIDE [TEMPLATE]\nExample: ./md2deck examples hello templates/md2deck-0.1.0.revealjs"
if [ $# = 0 ]; then echo "${u}"; exit 0; fi

d=$1 # DIR
f=$2 # SLIDE
t=$3 # [TEMPLATE]

ps="${f}" # path_src
pd="dist/" # path_dist
rw=1920 # decktape-width
rh=1080 # decktape-height
ut="" # user template
if [ $# = 3 ]; then ut="--data-dir=$(pwd) --template=../${t}"; fi

# start
cd "${d}" || exit

# generate html
# do not double quote ${ut}
pandoc -t revealjs -s -o "${ps}.html" "${ps}.md" ${ut} -V revealjs-url="../reveal.js" -V controls=false
open -a "Chromium" "${ps}.html"

# generate pdf
mkdir -p ${pd} # mkdir pd if pd does not exist
npx decktape "${ps}.html" "${pd}/${ps}_$(date +%Y%m%d_%H%M%S).pdf" --size "${rw}"x"${rh}"

# end
cd "$(dirname "$0")" || exit
