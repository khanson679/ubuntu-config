#!/bin/bash
# make links in home folder

for file in *; do
	ln -s $file $HOME/.$(basename $file);
done