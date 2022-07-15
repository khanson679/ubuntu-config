#!/bin/bash
# make links to all given files in home folder, adding a preceding dot
set -x
for file in dotfiles/*; do
    original=$(realpath $file)
    link=$HOME/.$(basename $file)
	echo "Linking $link -> $original"
	if [ -f $link ]; then rm -i $link; fi
	ln -fs $original $link
done
