REMOVE=rm -f
COPY=rsync -auvz 
MKDIR=mkdir -p
CVSDIR=/sw/fink/10.4/unstable/main/finkinfo


check:
	fink validate qgis*.info
	fink validate ../binary-darwin-i386/qgis*.deb

install: 
	$(COPY) gen2shp.info $(CVSDIR)/sci/gen2shp.info
	$(COPY) grass64.info $(CVSDIR)/sci/grass64.info
	$(COPY) grass64.patch $(CVSDIR)/sci/grass64.patch
	$(COPY) $(CVSDIR)/libs/libgeos3.3.0.info libgeos3.3.0.info
	$(COPY) libogdi3.info $(CVSDIR)/database/libogdi3.info
	$(COPY) libogdi3.patch $(CVSDIR)/database/libogdi3.patch
	$(COPY) librasterlite1.info $(CVSDIR)/database/libsrasterlite1.info
	$(COPY) libspatialite1-bin.info $(CVSDIR)/database/libspatialite1-bin.info
	$(COPY) libspatialite1.info $(CVSDIR)/database/libspatialite1.info
	$(COPY) pgrouting.info $(CVSDIR)/database/pgrouting.info
	$(COPY) pgrouting.patch $(CVSDIR)/database/pgrouting.patch
	$(COPY) $(CVSDIR)/database/psycopg2-py.info psycopg2-py.info
	-$(COPY) qgis-mac.info $(CVSDIR)/sci/qgis-mac.info
	$(COPY) $(CVSDIR)/sci/qgis-plugin-ftools.info qgis-plugin-ftools.info
	$(COPY) $(CVSDIR)/sci/qgis-plugin-gdaltools.info qgis-plugin-gdaltools.info
	$(COPY) $(CVSDIR)/sci/qgis-plugin-installer.info qgis-plugin-installer.info
	-$(COPY) qgis-plugin-manager.info $(CVSDIR)/sci/qgis-plugin-manager.info
	-$(COPY) qgis-plugin-mapserver.info $(CVSDIR)/sci/qgis-plugin-mapserver.info
	-$(COPY) qgis-plugin-osm.info $(CVSDIR)/sci/qgis-plugin-osm.info
	-$(COPY) qgis-plugin-timemanager.info $(CVSDIR)/sci/qgis-plugin-timemanager.info
	$(COPY) qgis16-mac.info $(CVSDIR)/sci/qgis16-mac.info
	$(COPY) $(CVSDIR)/sci/qgis17-py.info qgis17-py.info
	$(COPY) r-base.info $(CVSDIR)/sci/r-base.info
	$(COPY) r-base.patch $(CVSDIR)/sci/r-base.patch
	$(COPY) $(CVSDIR)/sci/r-cran-maptools.info r-cran-maptools.info
	$(COPY) $(CVSDIR)/sci/r-cran-proj4.info r-cran-proj4.info
	$(COPY) $(CVSDIR)/sci/r-cran-rgdal.info r-cran-rgdal.info
	$(COPY) $(CVSDIR)/sci/r-cran-sp.info r-cran-sp.info
	# Required for GDAL-PY
	$(COPY) $(CVSDIR)/libs/pythonmods/gdal-py.info gdal-py.info 
	$(COPY) $(CVSDIR)/libs/pythonmods/nose-py.info nose-py.info 
	$(COPY) $(CVSDIR)/languages/setuptools-py.info setuptools-py.info 
	# Required for grass
	$(COPY) $(CVSDIR)/languages/wxgtk2.8-py.info wxgtk2.8-py.info 
	$(COPY) $(CVSDIR)/languages/wxpython-py.info wxpython-py.info 
	$(COPY) $(CVSDIR)/languages/wxpython-py.patch wxpython-py.patch 
	$(COPY) $(CVSDIR)/libs/opengl-py.info opengl-py.info 
	$(COPY)  $(CVSDIR)/libs/opengl-py.patch opengl-py.patch 
	# Required for PostGIS
	$(COPY) $(CVSDIR)/sci/cgal4.info cgal4.info 
	$(COPY) $(CVSDIR)/libs/commons-logging.info commons-logging.info 
	$(COPY) $(CVSDIR)/libs/commons-net.info commons-net.info 
	$(COPY) $(CVSDIR)/libs/jakarta-bsf.info jakarta-bsf.info 
	$(COPY) $(CVSDIR)/libs/jakarta-bsf.patch jakarta-bsf.patch 
	$(COPY) $(CVSDIR)/libs/jakarta-oro.info jakarta-oro.info 
	$(COPY) $(CVSDIR)/libs/jdepend.info jdepend.info 
	$(COPY) $(CVSDIR)/libs/jsch.info jsch.info 
	$(COPY) $(CVSDIR)/libs/jts.info jts.info 
	$(COPY) $(CVSDIR)/libs/netrexx.info netrexx.info 
	$(COPY) $(CVSDIR)/libs/stylebook.info stylebook.info 
	# Required for py-qt4-mac, sip-py
	$(COPY) $(CVSDIR)/graphics/libpng15.info libpng15.info
	$(COPY) $(CVSDIR)/sound/phonon-mac.info phonon-mac.info
	$(COPY) $(CVSDIR)/sound/phonon.patch phonon.patch
	$(COPY) $(CVSDIR)/web/qtwebkit-mac.info qtwebkit-mac.info
	$(COPY) $(CVSDIR)/web/qtwebkit.patch qtwebkit.patch
	$(COPY) $(CVSDIR)/devel/automoc.info automoc.info
	$(COPY) $(CVSDIR)/devel/automoc.patch automoc.patch
	$(COPY) $(CVSDIR)/x11/fontconfig2-dev.info fontconfig2-dev.info
	$(COPY) $(CVSDIR)/x11/fontconfig2-dev.patch fontconfig2-dev.patch
	$(COPY) $(CVSDIR)/graphics/freetype219.info freetype219.info
	$(COPY) $(CVSDIR)/graphics/freetype219.patch freetype219.patch
	$(COPY) $(CVSDIR)/database/sqlite3.info sqlite3.info
	$(COPY) $(CVSDIR)/devel/flag-dedup.info flag-dedup.info
	$(COPY) $(CVSDIR)/devel/flag-dedup.patch flag-dedup.patch
	$(COPY) $(CVSDIR)/devel/flag-sort.info flag-sort.info 
	$(COPY) $(CVSDIR)/devel/flag-sort.patch flag-sort.patch 
	$(COPY) $(CVSDIR)/devel/kde4-buildenv.info kde4-buildenv.info 


.SUFFIXES: .info .patch

.PHONY: all clean install
