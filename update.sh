#!/bin/bash

SRC="/Users/drg/src/yui/yui-prettify/build"

for path in $(find . -name prettify* -type f | grep -v node_modules)
do
	dir=${path%/*}
	file=${path##*/}

	cmd="cp $SRC/$file $path"
	echo $cmd
	$cmd
done