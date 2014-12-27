# $OpenBSD: Makefile,v 1.4 2014/11/11 07:05:08 zhuk Exp $

COMMENT =	K Desktop Environment, office suite
HOMEPAGE =	http://www.calligra-suite.org/
DISTNAME =	calligra-2.8.90
PKGNAME =	calligra-2.9.0-beta
CATEGORIES =	editors

DIST_SUBDIR =	kde
MASTER_SITES =	${MASTER_SITE_KDE:=unstable/${DISTNAME}/}

MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE_CDROM =	Yes
DPB_PROPERTIES =	parallel

MODULES =	x11/kde4 \
		converters/libiconv \
		multimedia/phonon

MODKDE4_USE =	pim

SHARED_LIBS =   RtfReader                 51.0 # 1.0
SHARED_LIBS +=  basicflakes               14.0 # 1.0
SHARED_LIBS +=  braindumpcore             14.0 # 10.0
SHARED_LIBS +=  calligradb                14.0 # 1.0
SHARED_LIBS +=  calligrakdchart           14.0 # 1.0
SHARED_LIBS +=  calligrakdgantt           14.0 # 1.0
SHARED_LIBS +=  calligrasheetscommon      14.0 # 10.0
SHARED_LIBS +=  calligrasheetsodf         14.0 # 10.0
SHARED_LIBS +=  calligrastageprivate      14.0 # 1.0
SHARED_LIBS +=  flake                     14.0 # 1.0
SHARED_LIBS +=  flowprivate               14.0 # 1.0
SHARED_LIBS +=  karboncommon              14.0 # 1.0
SHARED_LIBS +=  karbonui                  14.0 # 1.0
SHARED_LIBS +=  kexicore                  14.0 # 1.0
SHARED_LIBS +=  kexidatatable             14.0 # 1.0
SHARED_LIBS +=  kexidataviewcommon        14.0 # 1.0
SHARED_LIBS +=  kexidb                    14.0 # 1.0
SHARED_LIBS +=  kexiextendedwidgets       14.0 # 1.0
SHARED_LIBS +=  kexiformutils             14.0 # 1.0
SHARED_LIBS +=  kexiguiutils              14.0 # 1.0
SHARED_LIBS +=  keximain                  14.0 # 1.0
SHARED_LIBS +=  keximigrate               14.0 # 1.0
SHARED_LIBS +=  kexirelationsview         14.0 # 1.0
SHARED_LIBS +=  kexiutils                 14.0 # 1.0
SHARED_LIBS +=  kformdesigner             14.0 # 1.0
SHARED_LIBS +=  kokross                   14.0 # 1.0
SHARED_LIBS +=  komain                    14.0 # 1.0
SHARED_LIBS +=  koodf                     14.0 # 1.0
SHARED_LIBS +=  kopageapp                 14.0 # 1.0
SHARED_LIBS +=  koplugin                  14.0 # 1.0
SHARED_LIBS +=  koproperty                14.0 # 1.0
SHARED_LIBS +=  kordf                     14.0 # 1.0
SHARED_LIBS +=  koreport                  14.0 # 1.0
SHARED_LIBS +=  kotext                    14.0 # 1.0
SHARED_LIBS +=  kowidgets                 14.0 # 1.0
SHARED_LIBS +=  kowidgetutils             14.0 # 1.0
SHARED_LIBS +=  kowv2                     9.0  # 1.0
SHARED_LIBS +=  kplatokernel              14.0 # 1.0
SHARED_LIBS +=  kplatomodels              14.0 # 1.0
SHARED_LIBS +=  kplatoui                  14.0 # 1.0
SHARED_LIBS +=  kritaimage                14.0 # 1.0
SHARED_LIBS +=  kritalibbrush             14.0 # 1.0
SHARED_LIBS +=  kritalibpaintop           14.0 # 1.0
SHARED_LIBS +=  kritaui                   14.0 # 1.0
SHARED_LIBS +=  kundo2                    14.0 # 1.0
SHARED_LIBS +=  pigmentcms                14.0 # 1.0
SHARED_LIBS +=  planprivate               14.0 # 1.0
SHARED_LIBS +=  planworkapp               14.0 # 1.0
SHARED_LIBS +=  planworkfactory           14.0 # 1.0
SHARED_LIBS +=  rcps_plan                 14.0 # 1.0
SHARED_LIBS +=  wordsprivate              14.0 # 1.0
SHARED_LIBS +=  kformula                  14.0 # 14.0
SHARED_LIBS +=  komsooxml                 14.0 # 14.0
SHARED_LIBS +=  koodf2                    14.0 # 14.0
SHARED_LIBS +=  koodfreader               14.0 # 14.0
SHARED_LIBS +=  kotextlayout              14.0 # 14.0
SHARED_LIBS +=  kovectorimage             14.0 # 14.0
SHARED_LIBS +=  koversion                 14.0 # 15.0

WANTLIB += GL GLEW GLU Half ICE Iex IlmImf IlmThread Imath OpenColorIO
WANTLIB += QtDBus QtDeclarative QtGui QtNetwork QtOpenGL QtScript
WANTLIB += QtSvg QtWebKit QtXml SM X11 Xext akonadi-kde c exiv2
WANTLIB += fftw3 glib-2.0 gsl gslcblas icui18n icuuc jpeg kabc
WANTLIB += kactivities kcalcore kdcraw kdeclarative kdeui kfile
WANTLIB += khtml kio kjs kparts kresources krosscore krossui lcms2
WANTLIB += m marblewidget mysqlclient nepomuk nepomukutils okularcore
WANTLIB += phonon_sexperimental png poppler poppler-qt4 pthread
WANTLIB += soprano sqlite3 sybdb tiff z

# kexi needs headers in postgresql,{-main,-server}
# kexi needs all db drivers to be present while building
BUILD_DEPENDS =	devel/boost \
		databases/mariadb \
		databases/postgresql,-main \
		databases/postgresql,-server \
		math/eigen2 \
		productivity/librcps

# kexi needs all db driver installed to run,
# assuming sqlite3 is in base...

RUN_DEPENDS =	databases/mariadb \
		databases/postgresql,-main \
		databases/postgresql,-server \
		devel/desktop-file-utils \
		misc/shared-mime-info \
		productivity/librcps \
		x11/gtk+2,-guic

LIB_DEPENDS =	databases/freetds \
		databases/libpqxx>=3,<5 \
		databases/mariadb \
		devel/gsl \
		graphics/exiv2 \
		graphics/glew \
		graphics/jpeg \
		graphics/lcms2 \
		graphics/opencolorio \
		graphics/openjpeg \
		graphics/png \
		graphics/tiff \
		math/fftw3,double \
		print/poppler,,-qt4 \
		textproc/icu4c \
		${MODKDE4_DEP_DIR}/libkdcraw \
		${MODKDE4_DEP_DIR}/marble \
		${MODKDE4_DEP_DIR}/okular

# Stuff we don't have ATM. Do not bother about CreateResources, it's
# pure optional run-time dependency.
CONFIGURE_ARGS +=	-DWITH_Cauchy:BOOL=Off \
			-DWITH_LibEtonyek:BOOL=Off \
			-DWITH_LibOdfGen:BOOL=Off \
			-DWITH_LibVisio:BOOL=Off \
			-DWITH_LibWpd:BOOL=Off \
			-DWITH_LibWpg:BOOL=Off \
			-DWITH_LibWps:BOOL=Off \
			-DWITH_Spnav:BOOL=Off \
			-DWITH_Vc:BOOL=Off \
			-DWITH_XBase:BOOL=Off

# Karbon wants SVG support through a shareware plugin for pstoedit
CONFIGURE_ARGS +=	-DWITH_Pstoedit:BOOL=Off

# Running D-Bus daemon is required
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
