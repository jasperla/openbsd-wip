# $OpenBSD$

COMMENT =	K Desktop Environment, office suite
HOMEPAGE =	http://www.calligra-suite.org/
DISTNAME =	calligra-${CALLIGRA_VERSION}
REVISION =	4

EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS =	flake			0.0 # 8.0
SHARED_LIBS +=	kokross			0.0 # 8.0
SHARED_LIBS +=	kopageapp		0.0 # 8.0
SHARED_LIBS +=	koplugin		0.0 # 8.0
SHARED_LIBS +=	koproperty		0.0 # 8.0
SHARED_LIBS +=	kotext			0.0 # 8.0
SHARED_LIBS +=	chartshapelib		0.0 # 8.0
SHARED_LIBS +=	karboncommon		0.0 # 8.0
SHARED_LIBS +=	karbonui		0.0 # 8.0
SHARED_LIBS +=	kdchart			0.0 # 8.0
SHARED_LIBS +=	kformulalib		0.0 # 8.0
SHARED_LIBS +=	kochart			0.0 # 8.0
SHARED_LIBS +=	komain			0.0 # 8.0
SHARED_LIBS +=	koodf			0.0 # 8.0
SHARED_LIBS +=	koreport		0.0 # 8.0
SHARED_LIBS +=	kowidgets		0.0 # 8.0
SHARED_LIBS +=	kplatokernel		0.0 # 8.0
SHARED_LIBS +=	kplatomodels		0.0 # 8.0
SHARED_LIBS +=	kplatoui		0.0 # 8.0
SHARED_LIBS +=	kritaimage		0.0 # 8.0
SHARED_LIBS +=	kritalibbrush		0.0 # 8.0
SHARED_LIBS +=	kritalibpaintop		0.0 # 8.0
SHARED_LIBS +=	kritaui			0.0 # 8.0
SHARED_LIBS +=	msooxml			0.0 # 8.0
SHARED_LIBS +=	pigmentcms		0.0 # 8.0
SHARED_LIBS +=	RtfReader		0.0 # 9.0
SHARED_LIBS +=	calligrastageprivate	0.0 # 9.0
SHARED_LIBS +=	flowprivate		0.0 # 9.0
SHARED_LIBS +=	kowv2			0.0 # 9.0
SHARED_LIBS +=	kundo2			0.0 # 9.0
SHARED_LIBS +=	libwmf			0.0 # 9.0
SHARED_LIBS +=	planprivate		0.0 # 9.0
SHARED_LIBS +=	planworkapp		0.0 # 9.0
SHARED_LIBS +=	planworkfactory		0.0 # 9.0
SHARED_LIBS +=	rcps_plan		0.0 # 9.0
SHARED_LIBS +=	textlayout		0.0 # 9.0
SHARED_LIBS +=	wordsprivate		0.0 # 9.0
SHARED_LIBS +=	braindumpcore		9.0 # 9.0
SHARED_LIBS +=	calligrasheetscommon	9.0 # 9.0
SHARED_LIBS +=	calligrasheetsodf	9.0 # 9.0

VMEM_WARNING =	Yes

MASTER_SITES =	${MASTER_SITE_KDE:=${CALLIGRA_BRANCH}/${DISTNAME}/}

WANTLIB =  c m pthread stdc++
WANTLIB += X11 lib/qt4/QtDeclarative lib/qt4/QtWebKit
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtScript lib/qt4/QtXmlPatterns
WANTLIB += lib/qt4/QtXml lib/qt4/Qt3Support lib/qt4/QtSql
WANTLIB += GL GLEW GLU Half ICE Iex IlmImf IlmThread Imath SM
WANTLIB += Xext akonadi-contact akonadi-kde exiv2 fftw3 freetype
WANTLIB += glib-2.0 gsl gslcblas iconv icui18n icuuc jpeg kabc
WANTLIB += kcal kcalcore kcmutils kdcraw kde3support kdeclarative
WANTLIB += kdeui kfile khtml kio kjs kmime knewstuff3 knotifyconfig
WANTLIB += kparts kpimutils kresources krosscore krossui ktexteditor
WANTLIB += lcms2 marblewidget mysqlclient nepomuk nepomukutils
WANTLIB += okularcore openjpeg phonon_s png poppler poppler-qt4
WANTLIB += qca2 soprano sqlite3 sybdb threadweaver tiff z

# kexi needs headers in postgresql,{-main,-server}
# kexi needs all db drivers to be present while building

BUILD_DEPENDS =	devel/boost \
		databases/mysql \
		databases/postgresql,-main \
		databases/postgresql,-server

# kexi needs all db driver installed to run,
# assuming sqlite3 is in base...

RUN_DEPENDS =	databases/mysql \
		databases/libpqxx \
		databases/postgresql,-main \
		databases/postgresql,-server \
		misc/shared-mime-info

# Optional run-time dependency, does not affect build
#RUN_DEPENDS +=	graphics/create-resources

MODKDE4_USE =	pim

LIB_DEPENDS =	databases/freetds \
		databases/mysql \
		databases/libpqxx \
		devel/glib \
		devel/gsl \
		devel/libgsf \
		graphics/dcmtk>=3.5.4p2 \
		graphics/exiv2 \
		graphics/glew \
		graphics/jpeg \
		graphics/lcms2 \
		graphics/libungif \
		graphics/openjpeg \
		graphics/png \
		graphics/tiff \
		math/eigen2 \
		math/fftw3,double \
		print/poppler,,-qt4 \
		productivity/librcps \
		security/qca2 \
		textproc/libxml \
		textproc/libxslt \
		x11/kde4/libkdcraw \
		x11/kde4/marble \
		x11/kde4/okular

# Stuff we don't have ATM. Do not bother about CreateResources, it's
# pure optional run-time dependency.
CONFIGURE_ARGS =	-DWITH_OpenCTL:BOOL=Off \
			-DWITH_Spnav:BOOL=Off \
			-DWITH_WPD:BOOL=Off \
			-DWITH_WPG:BOOL=Off \
			-DWITH_XBase:BOOL=Off

# Don't pick up tons of bloatware for rarely needed stuff.
CONFIGURE_ARGS +=	-DWITH_JNI:BOOL=Off

# Karbon wants SVG support through a shareware plugin for pstoedit
CONFIGURE_ARGS +=	-DWITH_Pstoedit:BOOL=Off

# Identical to system one anyway but shuts up CMake
post-extract:
	rm ${WRKSRC}/cmake/modules/FindIconv.cmake

.include <bsd.port.mk>
