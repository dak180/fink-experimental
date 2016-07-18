#!/bin/sh
# $Id: update.sh,v 1.5 2016/07/18 21:35:36 gecko2 Exp $

# Required: libfile-mmagic-perl liburi-find-perl libxml-rss-perl php-xml-rss

set -e
set -u
#set -x

CVSROOT="/home/fink/cvs/fink"
FINKDIR="/home/fink/fink"
TMPDIR="/home/fink/mirwork"
WEBDIR="/home/fink/web"

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
#find . -type f -name hostlogo.inc -exec cp ~fink/public_html/hostlogo.inc {} \;
~fink/scripts/rss-newpackages.pl
cd web/news/rdf
for feed in $(ls -A1 *rdf | sed -e 's/.rdf$//g'); do
        ln -fsv $feed.rdf $feed.rss
done
