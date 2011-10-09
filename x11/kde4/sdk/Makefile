# $OpenBSD$

COMMENT =	KDE SDK
DISTNAME =	kdesdk-${VERSION}

SHARED_LIBS +=	kastencontrollers	0.0 # 4.7
SHARED_LIBS +=	kastencore		0.0 # 4.7
SHARED_LIBS +=	kastengui		0.0 # 4.7
SHARED_LIBS +=	komparedialogpages	0.0 # 4.7
SHARED_LIBS +=	komparediff2		0.0 # 4.7
SHARED_LIBS +=	kompareinterface	0.0 # 4.7
SHARED_LIBS +=	oktetacore		0.0 # 4.7
SHARED_LIBS +=	oktetagui		0.0 # 4.7
SHARED_LIBS +=	oktetakastencontrollers	0.0 # 4.7
SHARED_LIBS +=	oktetakastencore	0.0 # 4.7
SHARED_LIBS +=	oktetakastengui		0.0 # 4.7

# For building KAppTemplate with weird file names
USE_GMAKE =		Yes

BUILD_DEPENDS +=	archivers/gtar \
			devel/boost

LIB_DEPENDS +=		databases/strigi \
	 		devel/subversion \
			security/qca2 \
			textproc/libxslt \
			textproc/libxml \
			textproc/hunspell \
			x11/kde4/baseapps \
			x11/kde4/libs \
			x11/kde4/pimlibs

RUN_DEPENDS +=	devel/desktop-file-utils
# XXX += update-mime-database?

WANTLIB += c m pthread stdc++
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtDesigner
WANTLIB += lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtScript
WANTLIB += lib/qt4/QtScriptTools lib/qt4/QtSql lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += kabc kcmutils kde3support kdecore kdesu kdeui kemoticons
WANTLIB += kfile kidletime kio knewstuff3 konq kparts kprintutils
WANTLIB += kresources krosscore krossui ktexteditor kutils nepomuk
WANTLIB += nepomukutils qca solid soprano streamanalyzer streams
WANTLIB += threadweaver
WANTLIB += apr-1 hunspell-1.2 svn_client-1 svn_delta-1 svn_fs-1
WANTLIB += svn_ra-1 svn_subr-1 xml2 xslt

# We have only pre-compiled Antlr3, and poxml wants
# C runtime from Antlr2, which is not easy to port
CONFIGURE_ARGS +=	-DWITH_Antlr2:Bool=FALSE

.include <bsd.port.mk>
