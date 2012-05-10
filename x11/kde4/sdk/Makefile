# $OpenBSD$

COMMENT =	K Desktop Environment, software development kit
DISTNAME =	kdesdk-${MODKDE_VERSION}
REVISION =	0

SHARED_LIBS =	komparedialogpages	0.0 # 4.7
SHARED_LIBS +=	komparediff2		0.0 # 4.7
SHARED_LIBS +=	kompareinterface	0.0 # 4.7
SHARED_LIBS +=  kasten1controllers        0.0 # 0.2
SHARED_LIBS +=  kasten1core               0.0 # 0.2
SHARED_LIBS +=  kasten1gui                0.0 # 0.2
SHARED_LIBS +=  kasten1okteta1controllers 0.0 # 0.2
SHARED_LIBS +=  kasten1okteta1core        0.0 # 0.2
SHARED_LIBS +=  kasten1okteta1gui         0.0 # 0.2
SHARED_LIBS +=  okteta1core               0.0 # 0.8
SHARED_LIBS +=  okteta1gui                0.0 # 0.8


WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtDesigner
WANTLIB += lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtScript
WANTLIB += lib/qt4/QtScriptTools lib/qt4/QtSql lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kabc kcmutils kde3support kdesu kdeui
WANTLIB += kfile kio knewstuff3 konq kparts
WANTLIB += kresources krosscore krossui ktexteditor nepomuk
WANTLIB += nepomukutils qca2 solid soprano streamanalyzer streams
WANTLIB += threadweaver
WANTLIB += apr-1 hunspell-1.2 svn_client-1 svn_delta-1 svn_fs-1
WANTLIB += svn_ra-1 svn_subr-1 xml2 xslt

MODKDE4_USE =	pim

# For building KAppTemplate with weird file names
USE_GMAKE =	Yes

BUILD_DEPENDS =	archivers/gtar \
		devel/boost

LIB_DEPENDS =	databases/strigi \
	 	devel/subversion \
		security/qca2 \
		textproc/libxslt \
		textproc/libxml \
		textproc/hunspell \
		x11/kde4/baseapps

# We have only pre-compiled Antlr3, and poxml wants
# C runtime from Antlr2, which is not easy to port
CONFIGURE_ARGS =	-DWITH_Antlr2:Bool=FALSE

.include <bsd.port.mk>
