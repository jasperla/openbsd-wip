# $OpenBSD: Makefile,v 1.18 2010/11/22 08:37:02 espie Exp $

COMMENT =	K Desktop Environment, libraries
DISTNAME =	kdelibs-${MODKDE_VERSION}
REVISION =	2

SHARED_LIBS =	kde3support          0.0      # .4.0
SHARED_LIBS +=	kdecore              8.0      # .5.0
SHARED_LIBS +=	kdefakes             8.0      # .5.0
SHARED_LIBS +=	kdesu                8.0      # .5.0
SHARED_LIBS +=	kdeui                9.0      # .5.0
SHARED_LIBS +=	kdnssd               3.0      # .2.0
SHARED_LIBS +=	khtml                8.0      # .5.0
SHARED_LIBS +=	kimproxy             2.0      # .4.0
SHARED_LIBS +=	kio                  8.0      # .5.0
SHARED_LIBS +=	kjs                  6.0      # .2.0
SHARED_LIBS +=	kjsembed             3.0      # .4.0
SHARED_LIBS +=	kmediaplayer         2.0      # .4.0
SHARED_LIBS +=	knotifyconfig        0.0      # .4.0
SHARED_LIBS +=	kntlm                2.0      # .1.0
SHARED_LIBS +=	kparts               5.0      # .4.0
SHARED_LIBS +=	krosscore            0.0      # .4.0
SHARED_LIBS +=	ktexteditor          2.0      # .4.0
SHARED_LIBS +=	kunittest            3.0      # .4.0
SHARED_LIBS +=	kutils               5.0      # .2.0
SHARED_LIBS +=	solid                0.0      # .4.0
SHARED_LIBS +=	threadweaver         0.0      # .4.0
SHARED_LIBS +=	kfile                0.0      # .4.0
SHARED_LIBS +=	knewstuff2           0.0      # .4.0
SHARED_LIBS +=	krossui              0.0      # .4.0
SHARED_LIBS +=  kpty                 0.0      # .4.0

SHARED_LIBS += 	krossqtsplugin 		0.0
SHARED_LIBS +=  kjsapi 			0.0
SHARED_LIBS +=	kdewebkit		0.0
SHARED_LIBS +=	knewstuff3		0.0
SHARED_LIBS +=	kunitconversion		0.0
SHARED_LIBS +=	plasma			0.0

SHARED_LIBS +=  kcmutils		0.0 # 4.7
SHARED_LIBS +=  kdeclarative		0.0 # 5.7
SHARED_LIBS +=  kemoticons		0.0 # 4.7
SHARED_LIBS +=  kidletime		0.0 # 4.7
SHARED_LIBS +=  kprintutils		0.0 # 4.7

SHARED_LIBS +=  nepomuk			0.0 # 4.7
SHARED_LIBS +=  nepomukquery		0.0 # 4.7
SHARED_LIBS +=  nepomukutils		0.0 # 4.7


WANTLIB =  c krb5 m pthread stdc++ util z
WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xft Xpm Xrender Xss
WANTLIB += Xtst
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtDeclarative
WANTLIB += lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtOpenGL
WANTLIB += lib/qt4/QtScript lib/qt4/QtSql lib/qt4/QtSvg
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += attica soprano sopranoclient streamanalyzer streams
WANTLIB += Half Iex IlmImf IlmThread Imath asn1 aspell bz2 com_err
WANTLIB += dbusmenu-qt enchant exslt fam gif gssapi intl jasper jpeg
WANTLIB += lzma pcre pcreposix png polkit-qt-core-1 qca>=3.0 xml2 xslt

MODULES =	multimedia/phonon
MODKDE4_USE =	

BUILD_DEPENDS =	misc/shared-desktop-ontologies \
		misc/shared-mime-info \
		textproc/docbook \
		textproc/docbook-xsl

RUN_DEPENDS =	misc/shared-mime-info \
		misc/shared-desktop-ontologies \
		sysutils/gamin \
		STEM->=${MODKDE4_VERSION}:x11/kde4/oxygen-icons \
		x11/dbus \
		x11/gtk+2,-guic

LIB_DEPENDS =	archivers/bzip2 \
		archivers/xz \
		x11/kde4/attica>=0.2.9 \
		databases/strigi \
		devel/bison \
		devel/pcre \
		graphics/jasper \
		graphics/libungif \
		graphics/openexr \
		security/qca2 \
		databases/soprano>=2.7.3 \
		sysutils/gamin \
		textproc/aspell/core \
		textproc/enchant \
		textproc/libxslt \
		x11/dbusmenu-qt \
		x11/grantlee \
		x11/polkit-qt4

# we don't have krb5-config
CONFIGURE_ARGS =	-DGSSAPI_LIBS:STRING="-lgssapi -lkrb5 -lasn1 -lcom_err" \
			-DGSSAPI_INCS:STRING="/usr/include/kerberosV" \
			-DGSSAPI_FLAVOR:STRING="HEIMDAL" \
			-DGSSAPI_FOUND:BOOL=TRUE \

# and do not have this stuff at all
CONFIGURE_ARGS +=	-DACL_FOUND:Bool=FALSE \
			-DHSPELL_FOUND:Bool=FALSE \
			-DHUPNP_FOUND:Bool=FALSE \
			-DUDEV_FOUND:Bool=FALSE

# some basic defines
CONFIGURE_ARGS +=	-D_KDE_DEFAULT_HOME_POSTFIX:STRING="4" \
			-DKDE4_INCLUDE_INSTALL_DIR:String=${LOCALBASE}/include \
			-DKDE4_LIB_INSTALL_DIR:String=${LOCALBASE}/lib \
			-DKDESU_USE_SUDO_DEFAULT:Bool=TRUE \
			-DSYSCONF_INSTALL_DIR:String=${SYSCONFDIR}

# Reimplemented CMake modules, because previous were totally broken
REWR_CMAKE_MODULES =	FindXine FindXKB FindPolkitQt

# Contain (required) additional functionality compared to system ones
WRAP_CMAKE_MODULES =	FindGettext FindLibXslt

WRONG_SYSCONF_FILES =	dbus-1	share/examples \
			xdg	share/examples

post-extract:
	@if pkg_info -e 'kdelibs-<4'; then \
		echo "Error: don't try to build with kde3 around"; \
		exit 1; \
	fi
.for M in ${REWR_CMAKE_MODULES}
	cp ${FILESDIR}/${M}.cmake ${WRKSRC}/cmake/modules/${M}.cmake
.endfor
.for M in ${WRAP_CMAKE_MODULES}
	${SUBST_CMD} -c ${FILESDIR}/${M}.cmake ${WRKSRC}/cmake/modules/${M}.cmake
.endfor

.include <bsd.port.mk>
