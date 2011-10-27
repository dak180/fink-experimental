#!/bin/sh -e
# "link-identical-files.sh"
# usage:
# $0 srcdir

test $# = 1 || exit 1
srcdir=$1
for f in $srcdir/*
do
# if file exists in . (destdir)
dest=`basename $f`
if test -f $dest
then
# destdir is not already linked
if test ! -L $dest
then
if diff -q $f $dest
then
# and both files are identical
# create link
	echo "SAME: $dest -- linking"
	ln -s -f $f .
else
# report differences
	echo "DIFF: $dest"
fi
else
	# already linked
#	echo "link: $dest"
	:
fi
else
	# only exists in srcdir
	echo "NEW:  $dest"
fi
done

