#!/bin/sh
# $Id: sync-cvs.sh,v 1.3 2011/06/15 11:34:35 gecko2 Exp $

set -e
set -u
#set -x
OLDDIR="$PWD"

rsync -4 -azvO --exclude=fink/CVSROOT/passwd --delete --delete-after rsync://fink.cvs.sourceforge.net:/cvsroot-data/f/fi/fink ~fink/cvs && \
date -u +%s >~fink/log/TIMESTAMP.cvs
~fink/scripts/update.sh
