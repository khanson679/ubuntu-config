#!/bin/bash
# make links to all fontconfig files
# set -x
fcdir=$HOME/.config/fontconfig/conf.d
mkdir -p $fcdir
for file in fontconfig/*; do
    original=$(realpath $file)
    link=$fcdir/$(basename $file)
	echo "Linking $link -> $original"
	if [ -f $link ]; then rm -i $link; fi
	ln -s $original $link
done
