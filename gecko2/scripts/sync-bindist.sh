#!/bin/sh
# $Id: sync-bindist.sh,v 1.2 2011/06/15 11:34:35 gecko2 Exp $

#RSYNCHOST="rsync://distfiles.master.finkmirrors.net"
RSYNCHOST="rsync://distfiles.ams.nl.eu.finkmirrors.net"

rsync -av --delete --delete-after $RSYNCHOST/finkbindist ~fink/finkbindist
printf "\n\n"

cp -av ~fink/public_html/hostlogo.inc ~fink/bindist/hostlogo.inc
cp -av ~fink/public_html/hostlogo.inc ~fink/bindist/bindist/hostlogo.inc
ln -vsf ~fink/distfiles ~fink/bindist/bindist/source
rm -v ~fink/bindist/bindist/fink.css ~fink/bindist/bindist/dists/fink.css
cp -av ~fink/public_html/fink.css ~fink/bindist/bindist/fink.css
cp -av ~fink/public_html/fink.css ~fink/bindist/bindist/dists/fink.css
