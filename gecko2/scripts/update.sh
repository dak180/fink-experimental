#!/bin/sh -e
# $Id: update.sh,v 1.3 2013/12/01 10:57:37 gecko2 Exp $

if [ $(id -u) -ne 0 ]; then
	exec sudo "$0"
fi

CVSROOT="/srv/fink/cvs/fink"
FINKDIR="/home/f/fink/fink"
TMPDIR="/home/f/fink/mirwork"
WEBDIR="/srv/fink/web"

if [ -d ${TMPDIR}/xml ]; then
        cd ${TMPDIR}/xml
        cvs -q up -PAd
else
        cd ${TMPDIR}
        cvs -Rqd ${CVSROOT} co -PA xml
fi

cd ${FINKDIR}
git pull
cd ${WEBDIR}
#test -d ${WEBDIR}/xml && rm -r ${WEBDIR}/xml   # old
#cp -a ${TMPDIR}/xml ${WEBDIR}/xml              # way
rsync -a --exclude=hostlogo.inc --exclude=*.rss ${TMPDIR}/xml ${WEBDIR}/
grep -ZRl http://www.finkproject.org/ xml | xargs -0 perl -pi -e 's,http://www.finkproject.org/,/,g'
cd xml
#make -s --no-print-directory all               # we do not recompile website
find . -type f -name hostlogo.inc -exec cp ~fink/public_html/hostlogo.inc {} \;
~fink/scripts/rss-newpackages.pl
cd web/news/rdf
for feed in $(ls -A1 *rdf | sed -e 's/.rdf$//g'); do
        ln -fsv $feed.rdf $feed.rss
done
