# $OpenBSD: kde.port.mk,v 1.35 2010/11/22 08:37:01 espie Exp $

SHARED_ONLY ?=	Yes

MODTDE_VERSION ?=
MODULES +=	x11/qt3
MODQT_OVERRIDE_UIC ?=No

MODTDE_NODEBUG ?=No

.if !${MODTDE_NODEBUG:L} == "yes"
FLAVORS +=	debug
.endif
FLAVOR ?=

MODTDE_CONFIGURE_ARGS =${MODQT_CONFIGURE_ARGS}
MODTDE_CONFIGURE_ARGS +=	--with-extra-libs="${LOCALBASE}/${TDE}:${LOCALBASE}/lib/db4:${LOCALBASE}/lib/samba:${LOCALBASE}/lib"
MODTDE_CONFIGURE_ARGS +=	--with-extra-includes="${LOCALBASE}/include/db4:${LOCALBASE}/include/libpng:${LOCALBASE}/include"
MODTDE_CONFIGURE_ARGS +=	--with-xdmdir=/var/X11/kdm
MODTDE_CONFIGURE_ARGS +=	--enable-mitshm
MODTDE_CONFIGURE_ARGS +=	--with-xinerama
.if ${FLAVOR:L:Mdebug}
MODTDE_CONFIGURE_ARGS +=	--enable-debug=yes
.else
MODTDE_CONFIGURE_ARGS +=	--disable-debug
MODTDE_CONFIGURE_ARGS +=	--disable-dependency-tracking
.endif
MODTDE_CONFIGURE_ARGS +=	--enable-final

MODTDE_CONFIG_GUESS_DIRS =	${WRKSRC} ${WRKSRC}/admin

MODTDE_CONFIGURE_ENV =		UIC_PATH="${MODQT_UIC}" UIC="${MODQT_UIC}"
MODTDE_CONFIGURE_ENV +=		RUN_KAPPFINDER=no KDEDIR=${LOCALBASE}
MODTDE_CONFIGURE_ENV +=		PTHREAD_LIBS=-pthread
MODTDE_MAKE_FLAGS =		CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'
MODTDE_MAKE_FLAGS +=		LIBRESOLV=

MODTDE_post-patch =	find ${WRKDIST} -name Makefile.am -exec touch {}.in \;

TDE=lib/tde
SUBST_VARS +=	TDE

WANTLIB +=	lib/qt3/qt-mt>=3.34

PATCH_LIST =	${PORTSDIR}/openbsd-wip/x11/tde/patches/patch-* patch-*
AUTOCONF ?=	/bin/sh ${WRKDIST}/admin/cvs.sh configure
