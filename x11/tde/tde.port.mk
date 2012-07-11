# $OpenBSD: kde.port.mk,v 1.35 2010/11/22 08:37:01 espie Exp $

SHARED_ONLY ?=	Yes

MODTDE_VERSION ?=
MODULES +=	x11/qt3
MODQT_OVERRIDE_UIC ?=No

MODTDE_CONFIGURE_ARGS =${MODQT_CONFIGURE_ARGS}
MODTDE_CONFIGURE_ARGS +=	--with-extra-libs="${LOCALBASE}/lib/db4:${LOCALBASE}/lib/samba:${LOCALBASE}/lib"
MODTDE_CONFIGURE_ARGS +=	--with-extra-includes="${LOCALBASE}/include/db4:${LOCALBASE}/include/libpng:${LOCALBASE}/include/X11/qt3:${LOCALBASE}/include"
MODTDE_CONFIGURE_ARGS +=	--with-xdmdir=/var/X11/kdm
MODTDE_CONFIGURE_ARGS +=	--enable-mitshm
MODTDE_CONFIGURE_ARGS +=	--with-xinerama
MODTDE_CONFIGURE_ARGS +=	--disable-debug
MODTDE_CONFIGURE_ARGS +=	--disable-dependency-tracking
MODTDE_CONFIGURE_ARGS +=	--enable-final

MODTDE_CONFIG_GUESS_DIRS =	${WRKSRC} ${WRKSRC}/admin

# XXX separate tqt module?
MODTDE_TQT_UIC =		${LOCALBASE}/bin/uic-tqt
MODTDE_CONFIGURE_ENV =		UIC_PATH="${MODTDE_TQT_UIC}"
MODTDE_CONFIGURE_ENV +=		UIC="${MODTDE_TQT_UIC}"
MODTDE_CONFIGURE_ENV +=		RUN_KAPPFINDER=no KDEDIR=${LOCALBASE}
MODTDE_CONFIGURE_ENV +=		PTHREAD_LIBS=-pthread
MODTDE_MAKE_FLAGS =		CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'
MODTDE_MAKE_FLAGS +=		LIBRESOLV=

MODTDE_post-patch =	find ${WRKDIST} -name Makefile.am -o -name aclocal.m4 -exec touch {}.in \;

WANTLIB +=	lib/qt3/qt-mt>=3.34

TDE_PORTS_DIR =	${PORTSDIR}/openbsd-wip/x11/tde
.if ${CONFIGURE_STYLE:Mautoconf}
PATCH_LIST ?=	${TDE_PORTS_DIR}/autopatches/patch-* patch-*
.else
PATCH_LIST ?=	${TDE_PORTS_DIR}/cmakepatches/patch-* patch-*
.endif
AUTOCONF_VERSION ?= 2.61
AUTOMAKE_VERSION ?= 1.10
AUTOCONF ?=	/bin/sh -c "cd ${WRKSRC} && env -i \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		${MAKE_PROGRAM} -f admin/Makefile.common"
LIBTOOL_FLAGS =	--tag=disable-static
