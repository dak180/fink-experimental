# $Id: Makefile,v 1.1.1.1 2004/02/08 14:15:50 babayoshihiko Exp $

# generate all documents

SUBDIRS = fink-readme usage install \
	  faq users-guide \
	  cvsaccess porting packaging x11 \
	  news

all clean force install:
	@for i in $(SUBDIRS) ; do \
	  $(MAKE) -C $$i -w $@ ; \
	done

# validate the XML files

check:
	find -name "*.xml" | xargs xmllint --noout --valid

.PHONY: all clean force install

# eof
