#!/bin/bash -e

# make-vcs-tarball.sh
# Written by Daniel Johnson 15 Feb 2012
# Released to the public domain.

usage ()
{
	echo "Usage:"
	echo "`basename $0` VCS_TYPE URL TARBALL_BASENAME [REVISION]"
	echo
	echo "Create a bzipped tarball of a repository."
	echo
	echo "	VCS_TYPE is one of git, hg, bzr or svn."
	echo "	URL is the remote repository url."
	echo "	TARBALL_BASENAME is the tarball filename without .tar.bz2."
	echo "	REVISION is an optional revision specification."
	echo "		Value depends on the VCS used."
	exit 0
}
	
cmd=$1
url=$2
tarball=$3
revision=$4

if [ "$#" = 0 ] || [ $cmd = "-h" ]; then
	usage
fi

cmd=${cmd:?"Must specify a VCS."}
url=${url:?"Must specify a repo URL."}
tarball=${tarball:?"Must specify a tarball name minus the extension."}
dir=`pwd`

if [ $cmd = git ]; then
	cd /tmp
	echo "Cloning git repo $url."
	git clone --no-checkout $url $tarball
	cd $tarball
	echo "Making tarball at ${dir}/${tarball}.tar.bz2"
	git archive --format=tar --prefix=${tarball}/ ${revision:=HEAD} | bzip2 >${dir}/${tarball}.tar.bz2
	cd ..
	rm -rf /tmp/${tarball}
	
elif [ $cmd = hg ]; then
	cd /tmp
	echo "Cloning hg repo $url."
	hg clone --noupdate $url $tarball
	cd $tarball
	echo "Making tarball at ${dir}/${tarball}.tar.bz2"
	hg archive --prefix=${tarball} ${revision:+--rev=$revision} ${dir}/${tarball}.tar.bz2
	cd ..
	rm -rf /tmp/${tarball}
	
elif [ $cmd = bzr ]; then
	echo "Making tarball at ${dir}/${tarball}.tar.bz2 from bzr repo $url"
	bzr export ${tarball}.tar.bz2 $url --root=${tarball} ${revision:+--revision=$revision}
	
elif [ $cmd = svn ]; then
	cd /tmp
	echo "Exporting svn repo $url."
	svn export ${revision:+--revision=$revision} $url $tarball
	echo "Making tarball at ${dir}/${tarball}.tar.bz2"
	tar -cjf ${dir}/${tarball}.tar.bz2 $tarball
	rm -rf /tmp/${tarball}

else
	echo "VCS '$cmd' not supported."
	echo "Supported VCSes are git, hg, bzr and svn."
	exit 1
fi

md5 ${dir}/${tarball}.tar.bz2

exit 0
