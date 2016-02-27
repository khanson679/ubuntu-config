#!/bin/bash
# make links to all given files in home folder, adding a preceding dot

for file in $@; do
	echo $file
	ln -sf $file $HOME/.$(basename $file);
done