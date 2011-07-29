REMOVE=rm -f
COPY=rsync -auvz 
MKDIR=mkdir -p
CVSDIR=/Volumes/Data/fink/dists/10.4/unstable/main/finkinfo


check:
	fink validate qgis*.info
	fink validate ../binary-darwin-i386/qgis*.deb

install: 
	-cd $(CVSDIR) && cvs -q update -dP
	cd /Volumes/Data/fink/finkinfo/	
	$(COPY) gen2shp.info $(CVSDIR)/sci/gen2shp.info
	$(COPY) grass64.info $(CVSDIR)/sci/grass64.info
	$(COPY) grass64.patch $(CVSDIR)/sci/grass64.patch
	$(COPY) libgeos3.3.0.info $(CVSDIR)/libs/libgeos3.3.0.info
	$(COPY) libogdi3.info $(CVSDIR)/database/libogdi3.info
	$(COPY) libogdi3.patch $(CVSDIR)/database/libogdi3.patch
	$(COPY) librasterlite1.info $(CVSDIR)/database/libsrasterlite1.info
	$(COPY) libspatialite1-bin.info $(CVSDIR)/database/libspatialite1-bin.info
	$(COPY) libspatialite1.info $(CVSDIR)/database/libspatialite1.info
	$(COPY) pgrouting.info $(CVSDIR)/database/pgrouting.info
	$(COPY) pgrouting.patch $(CVSDIR)/database/pgrouting.patch
	$(COPY) psycopg2-py.info $(CVSDIR)/libs/database/psycopg2-py.info
	-$(COPY) qgis-mac.info $(CVSDIR)/sci/qgis-mac.info
	$(COPY) qgis-plugin-ftools.info $(CVSDIR)/sci/qgis-plugin-ftools.info
	$(COPY) qgis-plugin-gdaltools.info $(CVSDIR)/sci/qgis-plugin-gdaltools.info
	$(COPY) qgis-plugin-installer.info $(CVSDIR)/sci/qgis-plugin-installer.info
	$(COPY) qgis-plugin-manager.info $(CVSDIR)/sci/qgis-plugin-manager.info
	$(COPY) qgis-plugin-mapserver.info $(CVSDIR)/sci/qgis-plugin-mapserver.info
	$(COPY) qgis-plugin-osm.info $(CVSDIR)/sci/qgis-plugin-osm.info
	$(COPY) qgis-plugin-timemanager.info $(CVSDIR)/sci/qgis-plugin-timemanager.info
	$(COPY) qgis16-mac.info $(CVSDIR)/sci/qgis16-mac.info
	$(COPY) qgis17-py.info $(CVSDIR)/sci/qgis17-py.info
	$(COPY) r-base.info $(CVSDIR)/sci/r-base.info
	$(COPY) r-base.patch $(CVSDIR)/sci/r-base.patch
	$(COPY) r-cran-maptools.info $(CVSDIR)/sci/r-cran-maptools.info
	$(COPY) r-cran-proj4.info $(CVSDIR)/sci/r-cran-proj4.info
	$(COPY) r-cran-rgdal.info $(CVSDIR)/sci/r-cran-rgdal.info
	$(COPY) r-cran-sp.info $(CVSDIR)/sci/r-cran-sp.info
	# Required for GDAL-PY
	$(COPY) gdal-py.info $(CVSDIR)/libs/pythonmods/gdal-py.info
	$(COPY) nose-py.info $(CVSDIR)/libs/pythonmods/nose-py.info
	$(COPY) setuptools-py.info $(CVSDIR)/languages/setuptools-py.info
	# Required for grass
	$(COPY) wxgtk2.8-py.info $(CVSDIR)/languages/wxgtk2.8-py.info   
	$(COPY) wxpython-py.info $(CVSDIR)/languages/wxpython-py.info   
	$(COPY) wxpython-py.patch $(CVSDIR)/languages/wxpython-py.patch
	$(COPY) opengl-py.info $(CVSDIR)/libs/opengl-py.info
	$(COPY) opengl-py.patch $(CVSDIR)/libs/opengl-py.patch
	# Required for PostGIS
	$(COPY) cgal4.info $(CVSDIR)/sci/cgal4.info
	$(COPY) commons-logging.info $(CVSDIR)/libs/commons-logging.info
	$(COPY) commons-net.info $(CVSDIR)/libs/commons-net.info
	$(COPY) jakarta-bsf.info $(CVSDIR)/libs/jakarta-bsf.info
	$(COPY) jakarta-bsf.patch $(CVSDIR)/libs/jakarta-bsf.patch
	$(COPY) jakarta-oro.info $(CVSDIR)/libs/jakarta-oro.info
	$(COPY) jdepend.info $(CVSDIR)/libs/jdepend.info
	$(COPY) jsch.info $(CVSDIR)/libs/jsch.info 
	$(COPY) jts.info $(CVSDIR)/libs/jts.info
	$(COPY) netrexx.info $(CVSDIR)/libs/netrexx.info
	$(COPY) stylebook.info $(CVSDIR)/libs/stylebook.info
	# Required for py-qt4-mac, sip-py
	$(COPY) libpng15.info $(CVSDIR)/graphics/libpng15.info
	$(COPY) phonon-mac.info $(CVSDIR)/sound/phonon-mac.info
	$(COPY) phonon.patch $(CVSDIR)/sound/phonon.patch
	$(COPY) qtwebkit-mac.info $(CVSDIR)/web/qtwebkit-mac.info
	$(COPY) qtwebkit.patch $(CVSDIR)/web/qtwebkit.patch
	$(COPY) automoc.info $(CVSDIR)/devel/automoc.info
	$(COPY) automoc.patch $(CVSDIR)/devel/automoc.patch
	$(COPY) fontconfig2-dev.info $(CVSDIR)/x11/fontconfig2-dev.info
	$(COPY) fontconfig2-dev.patch $(CVSDIR)/x11/fontconfig2-dev.patch
	$(COPY) freetype219.info $(CVSDIR)/graphics/freetype219.info
	$(COPY) freetype219.patch $(CVSDIR)/graphics/freetype219.patch
	$(COPY) sqlite3.info $(CVSDIR)/database/sqlite3.info
	$(COPY) flag-dedup.info $(CVSDIR)/devel/flag-dedup.info
	$(COPY) flag-dedup.patch $(CVSDIR)/devel/flag-dedup.patch
	$(COPY) flag-sort.info $(CVSDIR)/devel/flag-sort.info
	$(COPY) flag-sort.patch $(CVSDIR)/devel/flag-sort.patch
	$(COPY) kde4-buildenv.info $(CVSDIR)/devel/kde4-buildenv.info


.SUFFIXES: .info .patch

.PHONY: all clean install
