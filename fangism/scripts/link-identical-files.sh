#!/bin/sh -e
# vi: ts=4
# "link-identical-files.sh"
# usage:
# $0 srcdir

test $# = 1 || { echo "usage: $0 SRCDIR"; exit 1 ;}
subdirs=
srcdir=$1
for f in $srcdir/*
do
# if file exists in . (destdir)
dest=`basename $f`
if test -d $f
then
	echo "dir:  $dest"
	if test "$dest" != "CVS"
	then
		if test -z "$subdirs"
		then subdirs="$dest"
		else subdirs="$subdirs $dest"
		fi
	fi
else
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
fi
done

for d in $subdirs
do
	# recurse
	echo "******** Entering subdir: $d ********"
	( pushd $d && $0 ../$1/$d ; popd ; )
	echo "******** Leaving  subdir: $d ********"
done

