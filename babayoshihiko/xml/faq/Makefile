# $Id: Makefile,v 1.1.1.1 2004/02/08 14:15:52 babayoshihiko Exp $

# process XML files with stylesheet to produce HTML

basedir = ..

WANT_HTML = 1
DESTDIR = faq

SOURCE = faq.xml faq.ja.xml
TARGET = index.en.php general.en.php relations.en.php \
	 usage-fink.en.php comp-general.en.php comp-packages.en.php \
	 usage-general.en.php usage-packages.en.php upgrade-fink.en.php \
	 index.ja.php general.ja.php relations.ja.php \
	 usage-fink.ja.php comp-general.ja.php comp-packages.ja.php \
	 usage-general.ja.php usage-packages.ja.php upgrade-fink.ja.php

#TARGET = $(patsubst %.php,%.en.php, $(ORIGINAL_TARGET))
#TARGET += $(patsubst %.php,%.ja.php, $(ORIGINAL_TARGET))

include $(basedir)/Makefile.common

# eof
