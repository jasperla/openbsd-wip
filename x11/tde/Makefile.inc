# $OpenBSD$

SHARED_ONLY =	Yes

TDE_V =		3.5.13

CATEGORIES ?=	x11 x11/tde

HOMEPAGE ?=	http://www.trinitydesktop.org

MASTER_SITE_TDE = http://mirror.ets.kth.se/trinity/releases/${TDE_V}/ \
		http://trinity.blackmag.net/releases/${TDE_V}/
MASTER_SITES ?=	${MASTER_SITE_TDE}

DIST_SUBDIR ?=	tde

PORTHOME ?=	${WRKDIST}

MAINTAINER ?=	Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPL
PERMIT_DISTFILES_CDROM ?=       Yes
PERMIT_DISTFILES_FTP ?=         Yes
PERMIT_PACKAGE_CDROM ?=         Yes
PERMIT_PACKAGE_FTP ?=           Yes

MODTDE_VERSION = 3.5
MODULES +=	x11/tde

CONFIGURE_ENV +=	${MODTDE_CONFIGURE_ENV}
CONFIGURE_ENV +=	HOME="${PORTHOME}"
MAKE_ENV =		${CONFIGURE_ENV}

MAKE_FLAGS +=		${MODTDE_MAKE_FLAGS}
FAKE_FLAGS ?=		TAR=tar

TDE_HTML_DIR =		${PREFIX}/share/doc/kde/HTML
# some stuff still uses autoconf
.if !defined(CONFIGURE_STYLE)
MODULES +=		devel/cmake
CFLAGS +=		-pthread -I${LOCALBASE}/include -I${X11BASE}/include
CONFIGURE_ARGS +=	${MODTDE_CMAKE_ARGS}
#CONFIGURE_ARGS +=	-DLIB_INSTALL_DIR="${PREFIX}/${TDE}"
CONFIGURE_ARGS +=	-DPKGCONFIG_INSTALL_DIR="${PREFIX}/lib/pkgconfig"
CONFIGURE_ARGS +=	-DTDE_HTML_DIR="${TDE_HTML_DIR}"
_LINK_FLAGS =		-L${X11BASE}/lib -L${LOCALBASE}/lib -lc
CONFIGURE_ARGS +=	-DCMAKE_SHARED_LINKER_FLAGS="${_LINK_FLAGS}"
CONFIGURE_ARGS +=	-DCMAKE_MODULE_LINKER_FLAGS="${_LINK_FLAGS}"
CONFIGURE_ARGS +=	-DCMAKE_EXE_LINKER_FLAGS="${_LINK_FLAGS}"
#CONFIGURE_ARGS +=	-DUIC_EXECUTABLE:FILEPATH="${MODTDE_TQT_UIC}"
.for _n _v in ${SHARED_LIBS}
CONFIGURE_ARGS +=	-DLIB${_n}_VERSION=${_v}
.endfor
.elif ${CONFIGURE_STYLE:Mautoconf}
BUILD_DEPENDS +=	devel/autoconf/${AUTOCONF_VERSION}
BUILD_DEPENDS +=	devel/automake/${AUTOMAKE_VERSION}
BUILD_DEPENDS +=	devel/libtool
CONFIGURE_ARGS +=	${MODTDE_CONFIGURE_ARGS}
CONFIGURE_ENV +=	${MODTDE_CONFIGURE_ENV} LOCALBASE=${LOCALBASE}
MAKE_ENV =		${CONFIGURE_ENV}
MAKE_FLAGS +=		${MODTDE_MAKE_FLAGS}
USE_LIBTOOL =		gnu
.endif

NO_REGRESS ?=	Yes

post_install_libs = mkdir -p ${PREFIX}/${TDE}; cd ${PREFIX}/${TDE}
.for l v in ${SHARED_LIBS}
post_install_libs += ;test -e ../lib$l.so.$v && ln -sf ../lib$l.so.$v lib$l.so.$v
.endfor
#.if !target(post-install)
#post-install:
#	@${post_install_libs}
#.endif
