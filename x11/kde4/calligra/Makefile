# $OpenBSD$

COMMENT =	K Desktop Environment, office suite
VERSION =	2.4.3
DISTNAME =	calligra-${VERSION}
PKGNAME =	${DISTNAME:C/-/4-/1}
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
SHARED_LIBS +=	koabstraction		0.0 # 9.0
SHARED_LIBS +=	kowv2			0.0 # 9.0
SHARED_LIBS +=	kundo2			0.0 # 9.0
SHARED_LIBS +=	libwmf			0.0 # 9.0
SHARED_LIBS +=	planprivate		0.0 # 9.0
SHARED_LIBS +=	planworkapp		0.0 # 9.0
SHARED_LIBS +=	planworkfactory		0.0 # 9.0
SHARED_LIBS +=	rcps_plan		0.0 # 9.0
SHARED_LIBS +=	textlayout		0.0 # 9.0
SHARED_LIBS +=	wordsexportfilters	0.0 # 9.0
SHARED_LIBS +=	wordsprivate		0.0 # 9.0
SHARED_LIBS +=	braindumpcore		9.0 # 9.0
SHARED_LIBS +=	calligrasheetscommon	9.0 # 9.0
SHARED_LIBS +=	calligrasheetsodf	9.0 # 9.0

VMEM_WARNING =	Yes

MASTER_SITES =	${MASTER_SITE_KDE:=stable/${DISTNAME}/}

WANTLIB =  c m pthread stdc++
WANTLIB += X11 lib/qt4/QtDeclarative
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml lib/qt4/Qt3Support lib/qt4/QtTest dcmdata dcmsr
WANTLIB += kdeui kio kparts nepomuk nepomukutils soprano png
WANTLIB += GL GLU Half ICE Iex IlmImf IlmThread Imath SM Xext
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtScript lib/qt4/QtXmlPatterns
WANTLIB += exiv2 gif glib-2.0 gsl gslcblas iconv jpeg kcal kdcraw
WANTLIB += kde3support kfile khtml kjs krosscore krossui lcms
WANTLIB += lcms2 mysqlclient ofstd okularcore openjpeg phonon
WANTLIB += poppler poppler-qt4 qca2 sqlite3 sybdb tiff wpd-0.8
WANTLIB += xml2 xslt z
WANTLIB += GLEW QtSql QtWebKit fftw3 kabc kcmutils kemoticons
WANTLIB += kidletime knewstuff3 knotifyconfig kpimutils kprintutils
WANTLIB += kresources ktexteditor kutils threadweaver
WANTLIB += akonadi-contact akonadi-kde fontconfig freetype kcalcore
WANTLIB += kmime crypto marblewidget ssl kdeclarative


BUILD_DEPENDS =	devel/boost

RUN_DEPENDS =	misc/shared-mime-info \
		x11/gtk+2,-guic

# Optional run-time dependency, does not affect build
#RUN_DEPENDS +=	graphics/create-resources

MODKDE4_USE =	pim

LIB_DEPENDS =	databases/freetds \
		databases/mysql \
		databases/libpqxx \
		databases/sqlite3 \
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
		print/poppler,-qt4 \
		productivity/librcps \
		security/qca2 \
		textproc/libwpd \
		textproc/libxml \
		textproc/libxslt \
		x11/kde4/libkdcraw \
		x11/kde4/marble \
		x11/kde4/okular

# Stuff we don't have ATM. Do not bother about CreateResources, it's
# pure optional run-time dependency.
CONFIGURE_ARGS =	-DWITH_OpenCTL:BOOL=Off \
			-DWITH_Spnav:BOOL=Off \
			-DWITH_WPG:BOOL=Off \
			-DWITH_XBase:BOOL=Off

# Karbon wants SVG support through a shareware plugin for pstoedit
CONFIGURE_ARGS +=	-DWITH_Pstoedit:BOOL=Off

# Help bundled CMake modules
# Select sqlite3 from ports
CONFIGURE_ARGS +=	-DWPD_INCLUDE_DIR=${LOCALBASE}/include/libwpd-0.8 \
			-DSQLITE_INCLUDE_DIR=${LOCALBASE}/include

.include <bsd.port.mk>
