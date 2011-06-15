#!/bin/sh
# $Id$

OLDDIR="$PWD"
CVSROOT="/srv/fink/cvs/fink"
TMPDIR="/home/f/fink/mirwork"
WEBDIR="/srv/fink/web"

if [ -d ${TMPDIR}/xml ]; then
	cd ${TMPDIR}/xml
	cvs -q up -PAd
else
	cd ${TMPDIR}
	cvs -Rqd ${CVSROOT} co -PA xml
fi

cd ${WEBDIR}
test -d ${WEBDIR}/xml && rm -r ${WEBDIR}/xml
cp -a ${TMPDIR}/xml ${WEBDIR}/xml
grep -ZRl http://www.finkproject.org/ xml | xargs -0 perl -pi -e 's,http://www.finkproject.org/,http://fink.thetis.ig42.org/,g'
cd xml
#make -s --no-print-directory all
find . -name hostlogo.inc -exec cp ~fink/public_html/hostlogo.inc {} \;
#cp -a /usr/share/php/XML ${WEBDIR}/xml/web/XML
~fink/scripts/ranger/rss-newpackages.pl
cd $OLDDIR
