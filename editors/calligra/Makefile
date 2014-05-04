# $OpenBSD$

COMMENT =	K Desktop Environment, office suite
HOMEPAGE =	http://www.calligra-suite.org/
DISTNAME =	calligra-2.8.1
CATEGORIES =	editors

DIST_SUBDIR =	kde
MASTER_SITES =	${MASTER_SITE_KDE:=stable/${DISTNAME}/}

MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

# GPLv2+, LGPLv2+ and GNU FDLv1.2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	gcc4 \
		x11/kde4 \
		converters/libiconv \
		multimedia/phonon

MODGCC4_ARCHS = *
MODGCC4_LANGS = c++

MODKDE4_USE =	pim

SHARED_LIBS =   RtfReader                 0.0 # 0.0
SHARED_LIBS +=  basicflakes               0.0 # 0.0
SHARED_LIBS +=  braindumpcore             0.0 # 9.0
SHARED_LIBS +=  calligradb                0.0 # 0.0
SHARED_LIBS +=  calligrakdchart           0.0 # 0.0
SHARED_LIBS +=  calligrakdgantt           0.0 # 0.0
SHARED_LIBS +=  calligrasheetscommon      0.0 # 9.0
SHARED_LIBS +=  calligrasheetsodf         0.0 # 9.0
SHARED_LIBS +=  calligrastageprivate      0.0 # 0.0
SHARED_LIBS +=  chartshapelib             0.0 # 0.0
SHARED_LIBS +=  flake                     0.0 # 0.0
SHARED_LIBS +=  flowprivate               0.0 # 0.0
SHARED_LIBS +=  karboncommon              0.0 # 0.0
SHARED_LIBS +=  karbonui                  0.0 # 0.0
SHARED_LIBS +=  kexicore                  0.0 # 0.0
SHARED_LIBS +=  kexidatatable             0.0 # 0.0
SHARED_LIBS +=  kexidataviewcommon        0.0 # 0.0
SHARED_LIBS +=  kexidb                    0.0 # 0.0
SHARED_LIBS +=  kexiextendedwidgets       0.0 # 0.0
SHARED_LIBS +=  kexiformutils             0.0 # 0.0
SHARED_LIBS +=  kexiguiutils              0.0 # 0.0
SHARED_LIBS +=  keximain                  0.0 # 0.0
SHARED_LIBS +=  keximigrate               0.0 # 0.0
SHARED_LIBS +=  kexirelationsview         0.0 # 0.0
SHARED_LIBS +=  kexiutils                 0.0 # 0.0
SHARED_LIBS +=  kformdesigner             0.0 # 0.0
SHARED_LIBS +=  kokross                   0.0 # 0.0
SHARED_LIBS +=  komain                    0.0 # 0.0
SHARED_LIBS +=  koodf                     0.0 # 0.0
SHARED_LIBS +=  kopageapp                 0.0 # 0.0
SHARED_LIBS +=  koplugin                  0.0 # 0.0
SHARED_LIBS +=  koproperty                0.0 # 0.0
SHARED_LIBS +=  kordf                     0.0 # 0.0
SHARED_LIBS +=  koreport                  0.0 # 0.0
SHARED_LIBS +=  kotext                    0.0 # 0.0
SHARED_LIBS +=  kowidgets                 0.0 # 0.0
SHARED_LIBS +=  kowidgetutils             0.0 # 0.0
SHARED_LIBS +=  kowv2                     0.0 # 0.0
SHARED_LIBS +=  kplatokernel              0.0 # 0.0
SHARED_LIBS +=  kplatomodels              0.0 # 0.0
SHARED_LIBS +=  kplatoui                  0.0 # 0.0
SHARED_LIBS +=  kritaimage                0.0 # 0.0
SHARED_LIBS +=  kritalibbrush             0.0 # 0.0
SHARED_LIBS +=  kritalibpaintop           0.0 # 0.0
SHARED_LIBS +=  kritaui                   0.0 # 0.0
SHARED_LIBS +=  kundo2                    0.0 # 0.0
SHARED_LIBS +=  msooxml                   0.0 # 0.0
SHARED_LIBS +=  odftraverse               0.0 # 0.0
SHARED_LIBS +=  pigmentcms                0.0 # 0.0
SHARED_LIBS +=  planprivate               0.0 # 0.0
SHARED_LIBS +=  planworkapp               0.0 # 0.0
SHARED_LIBS +=  planworkfactory           0.0 # 0.0
SHARED_LIBS +=  rcps_plan                 0.0 # 0.0
SHARED_LIBS +=  textlayout                0.0 # 0.0
SHARED_LIBS +=  vectorimage               0.0 # 0.0
SHARED_LIBS +=  wordsprivate              0.0 # 0.0
SHARED_LIBS +=  kformula                  13.0 # 13.0
SHARED_LIBS +=  komsooxml                 13.0 # 13.0
SHARED_LIBS +=  koodf2                    13.0 # 13.0
SHARED_LIBS +=  koodfreader               13.0 # 13.0
SHARED_LIBS +=  kotextlayout              13.0 # 13.0
SHARED_LIBS +=  kovectorimage             13.0 # 13.0


WANTLIB =  c m pthread z
WANTLIB += GL GLEW GLU Half ICE Iex IlmImf IlmThread Imath SM X11 Xext
WANTLIB += lib/qt4/QtDeclarative lib/qt4/QtWebKit lib/qt4/QtDBus
WANTLIB += lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg lib/qt4/QtOpenGL
WANTLIB += lib/qt4/QtScript lib/qt4/QtXml
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtSql
WANTLIB += ${KDE4LIB}/akonadi-contact ${KDE4LIB}/akonadi-kde
WANTLIB += ${KDE4LIB}/kabc ${KDE4LIB}/kactivities ${KDE4LIB}/kcal
WANTLIB += ${KDE4LIB}/kcalcore ${KDE4LIB}/kcmutils ${KDE4LIB}/kdcraw
WANTLIB += ${KDE4LIB}/kde3support ${KDE4LIB}/kdeclarative
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kfile ${KDE4LIB}/khtml
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/kjs ${KDE4LIB}/kmime
WANTLIB += ${KDE4LIB}/knewstuff3 ${KDE4LIB}/knotifyconfig
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/kpimutils ${KDE4LIB}/kresources
WANTLIB += ${KDE4LIB}/krosscore ${KDE4LIB}/krossui
WANTLIB += ${KDE4LIB}/ktexteditor ${KDE4LIB}/marblewidget
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukcore
WANTLIB += ${KDE4LIB}/nepomukutils ${KDE4LIB}/okularcore
WANTLIB += ${KDE4LIB}/phononexperimental
WANTLIB += exiv2 fftw3 freetype glib-2.0 gsl icui18n icuuc jpeg
WANTLIB += lcms2 mysqlclient png poppler poppler-qt4
WANTLIB += qca2 soprano sqlite3 sybdb threadweaver tiff

# kexi needs headers in postgresql,{-main,-server}
# kexi needs all db drivers to be present while building
BUILD_DEPENDS =	devel/boost \
		databases/mysql \
		databases/postgresql,-main \
		databases/postgresql,-server \
		databases/libpqxx \
		math/eigen2 \
		productivity/librcps

# kexi needs all db driver installed to run,
# assuming sqlite3 is in base...

RUN_DEPENDS =	databases/mysql \
		databases/libpqxx \
		databases/postgresql,-main \
		databases/postgresql,-server \
		devel/desktop-file-utils \
		misc/shared-mime-info \
		productivity/librcps \
		x11/gtk+2,-guic

LIB_DEPENDS =	databases/freetds \
		databases/mysql \
		devel/gsl \
		graphics/exiv2 \
		graphics/glew \
		graphics/jpeg \
		graphics/lcms2 \
		graphics/png \
		graphics/tiff \
		math/fftw3,double \
		print/poppler,,-qt4 \
		security/qca2 \
		textproc/icu4c \
		${MODKDE4_DEP_DIR}/libkdcraw \
		${MODKDE4_DEP_DIR}/marble \
		${MODKDE4_DEP_DIR}/okular

# Stuff we don't have ATM. Do not bother about CreateResources, it's
# pure optional run-time dependency.
CONFIGURE_ARGS =	-DWITH_Spnav:BOOL=Off \
			-DWITH_WPD:BOOL=Off \
			-DWITH_WPG:BOOL=Off \
			-DWITH_XBase:BOOL=Off

# Karbon wants SVG support through a shareware plugin for pstoedit
CONFIGURE_ARGS +=	-DWITH_Pstoedit:BOOL=Off

.include <bsd.port.mk>
