#!/bin/sh
# $Id: fink-remove-all.sh,v 1.4 2005/05/14 11:34:06 shinra Exp $
. /sw/bin/init.sh

set -ex

tmpdir="${tmpdir:-/var/root}"
removelist="${tmpdir}/fink-remove-list.tmp"
dontremove="/usr/local/admin/dontremove.sed"

#fink list -t -i | awk -F'\t' '{print $2}' | xargs -n 900 -t fink -y remove
printlist() {
    fink list -t "$@" |
      awk -F'\t' '($1 !~ /p/ && $2 !~ /^system-/ && $4 !~ /\[virtual package/) {print $2}'
}

removeall() {
    printlist -i | sed -f "$dontremove" > "${removelist}"
    xargs -n 900 -t fink -y purge < "${removelist}"
    rm -f "${removelist}"
}

removeall
