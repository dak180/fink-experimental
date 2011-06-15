#!/bin/sh -e
# $Id$

EXTERNIP=85.214.23.162
OLDDIR="$PWD"

if [ "$1" == "master" ]; then
	rsync -4 -azvO --exclude=fink/CVSROOT/passwd --delete --delete-after rsync://fink.cvs.sourceforge.net:/cvsroot-data/f/fi/fink ~fink/cvs && \
	date -u +%s >~fink/log/TIMESTAMP.cvs
	~fink/scripts/update.sh
elif [ "$1" == "slave" ]; then
	rsync -4 --address=$EXTERNIP -azv --delete --delete-after rsync://unixforge.de/finkcvs ~fink/cvs && \
	date -u +%s >~fink/log/TIMESTAMP.cvs
fi
