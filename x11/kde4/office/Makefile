# $OpenBSD$

COMMENT =	KDE office suite
VERSION =	2.3.3
DISTNAME =	koffice-${VERSION}
PKGNAME =	${DISTNAME:C/-/4-/1}

SHARED_LIBS =	flake			0.0
SHARED_LIBS +=	kokross			0.0
SHARED_LIBS +=	kopageapp		0.0
SHARED_LIBS +=	koplugin		0.0
SHARED_LIBS +=	koproperty		0.0
SHARED_LIBS +=	koreports		0.0
SHARED_LIBS +=	kotext			0.0
SHARED_LIBS +=	main			0.0
SHARED_LIBS +=	odf			0.0
SHARED_LIBS +=	pigment			0.0
SHARED_LIBS +=	widgets			0.0

MASTER_SITES =	${MASTER_SITE_KDE:=stable/${DISTNAME}/}

WANTLIB =  c m pthread stdc++
WANTLIB += X11
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kdeui kio kparts nepomuk nepomukutils soprano png

BUILD_DEPENDS =	devel/boost

# Optional stuff
#RUN_DEPENDS =	graphics/create-resources

MODKDE4_USE =	pim

LIB_DEPENDS =	databases/freetds \
		databases/mysql \
		databases/libpqxx \
		databases/sqlite3 \
		devel/glib \
		devel/gsl \
		devel/libgsf \
		dcmtk->=3.5.4p2:graphics/dcmtk \
		graphics/exiv2 \
		graphics/glew \
		graphics/jpeg \
		graphics/lcms2 \
		graphics/libungif \
		graphics/openjpeg \
		graphics/png \
		graphics/pstoedit \
		graphics/tiff \
		math/eigen2 \
		math/fftw3,double \
		print/poppler,-qt4 \
		security/qca2 \
		textproc/libwpd \
		textproc/libxml \
		textproc/libxslt \
		x11/kde4/libkdcraw \
		x11/kde4/okular

# Stuff we don't have ATM. Do not bother about CreateResources, it's
# pure optional run-time dependency.
CONFIGURE_ARGS =	-DWITH_LibRCPS:BOOL=Off \
			-DWITH_OpenCTL:BOOL=Off \
			-DWITH_Spnav:BOOL=Off \
			-DWITH_WPG:BOOL=Off \
			-DWITH_XBase:BOOL=Off

# Karbon wants SVG support, which is a shareware plugin for pstoedit
CONFIGURE_ARGS +=	-DWITH_Pstoedit:BOOL=Off

# Help bundled CMake modules
CONFIGURE_ARGS +=	-DWPD_INCLUDE_DIR=${LOCALBASE}/include/libwpd-0.8

# aja@ trick + looping trick stolen from devel/monodevelop
# Have to remove -Werror=return-type from files to allow compilation to proceed
# Have to remove -fopenmp, because our gcc complains about missing libgomp.spec file

REPLACE_WERROR =	flags.make	link.txt	relink.txt

post-configure:
	for i in ${REPLACE_WERROR}; do \
		cd ${WRKBUILD} && find . -name $${i} | xargs perl -pi -e 's,-Werror=return-type,,g'; \
	done
	
#	for i in ${REPLACE_WERROR}; do \
#		cd ${WRKBUILD} && find . -name $${i} | xargs perl -pi -e 's,-fopenmp ,,g'; \
#	done

.include <bsd.port.mk>
