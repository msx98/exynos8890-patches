#!/bin/bash

DEFAULT_REPO_DIR=$REPO_DIR
PATCHES_DIR=${1:-"./"}
REPO_DIR=${2:-"$DEFAULT_REPO_DIR"}

for dir in $PATCHES_DIR/*/
do
	patch_path=`basename $dir`
	new_path=`printf $patch_path | sed 's/_/\//g'`
	dest_path="$REPO_DIR/$new_path"
	echo "Patching in $dest_path"
	cd $dest_path
	for patch_file in $dir/*.patch
	do
		git am --signoff < $patch_file
	done
done
