# $OpenBSD$

COMMENT-main =		Trinity Desktop Environment, libraries
COMMENT-cups =		Trinity Desktop Environment, CUPS support

DISTNAME =		kdelibs-${TDE_V}
PKGNAME-main =		${DISTNAME}
PKGNAME-cups =		kdecups-${TDE_V}

MULTI_PACKAGES =	-main -cups

SHARED_LIBS +=  DCOP                      8.0 # 4.2
SHARED_LIBS +=  artskde                   5.0 # 1.2
SHARED_LIBS +=  connectionmanager         0.0 # 0.0
SHARED_LIBS +=  kabc                      5.0 # 1.2
SHARED_LIBS +=  kabc_dir                  3.0 # 1.0
SHARED_LIBS +=  kabc_file                 3.0 # 1.0
SHARED_LIBS +=  kabc_ldapkio              3.0 # 1.0
SHARED_LIBS +=  kabc_net                  0.0 # 1.0
SHARED_LIBS +=  katepartinterfaces        2.0 # 0.0
SHARED_LIBS +=  kdecore                   8.0 # 4.2
SHARED_LIBS +=  kdefakes                  8.0 # 4.2
SHARED_LIBS +=  kdefx                     8.0 # 4.2
SHARED_LIBS +=  kdeprint                  8.0 # 4.2
SHARED_LIBS +=  kdeprint_management       8.0 # 4.2
SHARED_LIBS +=  kdesasl                   5.0 # 1.2
SHARED_LIBS +=  kdesu                     8.0 # 4.2
SHARED_LIBS +=  kdeui                     9.0 # 4.2
SHARED_LIBS +=  kdnssd                    3.0 # 1.0
SHARED_LIBS +=  kglib                     0.0 # 0.0
SHARED_LIBS +=  khtml                     8.0 # 4.2
SHARED_LIBS +=  kimproxy                  2.0 # 0.0
SHARED_LIBS +=  kio                       8.0 # 4.2
SHARED_LIBS +=  kjava                     3.0 # 1.0
SHARED_LIBS +=  kjs                       6.0 # 1.2
SHARED_LIBS +=  kmdi                      3.0 # 1.0
SHARED_LIBS +=  kmdi2                     3.0 # 1.0
SHARED_LIBS +=  kmediaplayer              2.0 # 0.0
SHARED_LIBS +=  kmid                      2.0 # 0.0
SHARED_LIBS +=  knewstuff                 3.0 # 1.0
SHARED_LIBS +=  kntlm                     2.0 # 0.0
SHARED_LIBS +=  kparts                    5.0 # 2.1
SHARED_LIBS +=  krandr                    0.0 # 0.0
SHARED_LIBS +=  kresources                5.0 # 1.2
SHARED_LIBS +=  krsync                    0.0 # 0.0
SHARED_LIBS +=  kscreensaver              8.0 # 4.2
SHARED_LIBS +=  kscript                   2.0 # 0.0
SHARED_LIBS +=  kspell                    8.0 # 4.2
SHARED_LIBS +=  kspell2                   3.0 # 1.0
SHARED_LIBS +=  ktexteditor               2.0 # 0.0
SHARED_LIBS +=  kunittest                 3.0 # 1.0
SHARED_LIBS +=  kutils                    5.0 # 1.2
SHARED_LIBS +=  kwalletbackend            3.0 # 1.0
SHARED_LIBS +=  kwalletclient             3.0 # 1.0
SHARED_LIBS +=  networkstatus             0.0 # 0.0
SHARED_LIBS +=  vcard                     3.0 # 0.0

WANTLIB += ICE SM X11 Xcomposite Xrender c expat fontconfig
WANTLIB += freetype m pthread qt-mt stdc++ util z idn tqt

WANTLIB-main += ${WANTLIB} Xext Xrandr bz2
WANTLIB-main += glib-2.0 gobject-2.0 jpeg
WANTLIB-main += xml2 xslt Half Iex
WANTLIB-main += IlmImf IlmThread Imath aspell jasper tiff
WANTLIB-main += art_lgpl_2 artsflow artsflow_idl kmedia2_idl mcop qtmcop
WANTLIB-main += soundserver_idl
WANTLIB-cups += ${WANTLIB} DCOP cups kdecore kdefakes kdefx kdeprint 
WANTLIB-cups += kdeprint_management kdesu kdeui kio kwalletclient

MODULES =		devel/gettext
RUN_DEPENDS-main =	devel/desktop-file-utils
LIB_DEPENDS =		x11/tde/tqt \
			devel/libidn
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			x11/tde/arts \
			textproc/libxml \
			textproc/libxslt \
			graphics/openexr \
			graphics/libart \
			textproc/aspell/core \
			graphics/jasper
LIB_DEPENDS-cups =	${LIB_DEPENDS} \
			${BUILD_PKGPATH},-main \
			print/cups

CONFIGURE_ARGS +=	-DWITH_ALSA=OFF \
			-DWITH_LIBART=ON \
			-DWITH_LIBIDN=ON \
			-DWITH_TIFF=ON \
			-DWITH_JASPER=ON \
			-DWITH_OPENEXR=ON \
			-DWITH_ASPELL=ON \
			-DWITH_AVAHI=OFF \
			-DSYSCONF_INSTALL_DIR="${PREFIX}/share/apps/kde-conf-sample" \
			-DSYSCONF_DIR="${SYSCONF_DIR}"

WRKDIST =		${WRKDIR}/kdelibs

.include <bsd.port.mk>
