# $OpenBSD$

COMMENT =	KDE office suite
VERSION =	2.3.3
DISTNAME =	koffice-${VERSION}
PKGNAME =	${DISTNAME:C/-/4-/1}

SHARED_LIBS =	flake			0.0 # 8.0
SHARED_LIBS +=	kokross			0.0 # 8.0
SHARED_LIBS +=	kopageapp		0.0 # 8.0
SHARED_LIBS +=	koplugin		0.0 # 8.0
SHARED_LIBS +=	koproperty		0.0 # 8.0
SHARED_LIBS +=	kotext			0.0 # 8.0
SHARED_LIBS +=  chartshapelib		0.0 # 8.0
SHARED_LIBS +=  karboncommon		0.0 # 8.0
SHARED_LIBS +=  karbonui		0.0 # 8.0
SHARED_LIBS +=  kdchart			0.0 # 8.0
SHARED_LIBS +=  kexicore		0.0 # 8.0
SHARED_LIBS +=  kexidatatable		0.0 # 8.0
SHARED_LIBS +=  kexidb			0.0 # 8.0
SHARED_LIBS +=  kexiextendedwidgets	0.0 # 8.0
SHARED_LIBS +=  kexiformutils		0.0 # 8.0
SHARED_LIBS +=  kexiguiutils		0.0 # 8.0
SHARED_LIBS +=  keximain		0.0 # 8.0
SHARED_LIBS +=  keximigrate		0.0 # 8.0
SHARED_LIBS +=  kexirelationsview	0.0 # 8.0
SHARED_LIBS +=  kexiutils		0.0 # 8.0
SHARED_LIBS +=  kformdesigner		0.0 # 8.0
SHARED_LIBS +=  kformulalib		0.0 # 8.0
SHARED_LIBS +=  kformulaprivate		0.0 # 8.0
SHARED_LIBS +=  kochart			0.0 # 8.0
SHARED_LIBS +=  komain			0.0 # 8.0
SHARED_LIBS +=  koodf			0.0 # 8.0
SHARED_LIBS +=  koreport		0.0 # 8.0
SHARED_LIBS +=  kowidgets		0.0 # 8.0
SHARED_LIBS +=  kowmf			0.0 # 8.0
SHARED_LIBS +=  kplatokernel		0.0 # 8.0
SHARED_LIBS +=  kplatomodels		0.0 # 8.0
SHARED_LIBS +=  kplatoprivate		0.0 # 8.0
SHARED_LIBS +=  kplatoui		0.0 # 8.0
SHARED_LIBS +=  kplatoworkapp		0.0 # 8.0
SHARED_LIBS +=  kplatoworkfactory	0.0 # 8.0
SHARED_LIBS +=  kpresenterprivate	0.0 # 8.0
SHARED_LIBS +=  kritaimage		0.0 # 8.0
SHARED_LIBS +=  kritalibbrush		0.0 # 8.0
SHARED_LIBS +=  kritalibpaintop		0.0 # 8.0
SHARED_LIBS +=  kritaui			0.0 # 8.0
SHARED_LIBS +=  kspreadcommon		0.0 # 8.0
SHARED_LIBS +=  kspreadodf		0.0 # 8.0
SHARED_LIBS +=  kwmf			0.0 # 8.0
SHARED_LIBS +=  kwordexportfilters	0.0 # 8.0
SHARED_LIBS +=  kwordprivate		0.0 # 8.0
SHARED_LIBS +=  msooxml			0.0 # 8.0
SHARED_LIBS +=  pigmentcms		0.0 # 8.0


VMEM_WARNING =	Yes

MASTER_SITES =	${MASTER_SITE_KDE:=stable/${DISTNAME}/}

WANTLIB =  c m pthread stdc++
WANTLIB += X11
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml lib/qt4/Qt3Support dcmdata dcmsr
WANTLIB += kdeui kio kparts nepomuk nepomukutils soprano png
WANTLIB += GL GLU Half ICE Iex IlmImf IlmThread Imath SM Xext
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtScript lib/qt4/QtXmlPatterns
WANTLIB += exiv2 gif glib-2.0 gsl gslcblas iconv jpeg kcal kdcraw
WANTLIB += kde3support kfile khtml kjs krosscore krossui lcms
WANTLIB += lcms2 mysqlclient ofstd okularcore openjpeg phonon
WANTLIB += poppler poppler-qt4 qca sqlite3 sybdb tiff wpd-0.8
WANTLIB += xml2 xslt z
WANTLIB += GLEW QtSql QtWebKit fftw3 kabc kcmutils kemoticons
WANTLIB += kidletime knewstuff3 knotifyconfig kpimutils kprintutils
WANTLIB += kresources ktexteditor kutils threadweaver

BUILD_DEPENDS =	devel/boost \
		databases/freetds \
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

REPLACE_WERROR =	flags.make	link.txt	relink.txt

post-configure:
	for i in ${REPLACE_WERROR}; do \
		cd ${WRKBUILD} && find . -name $${i} | xargs perl -pi -e 's,-Werror=return-type,,g'; \
	done
	
.include <bsd.port.mk>
