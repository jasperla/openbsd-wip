# $OpenBSD$

COMMENT =		yet another kuake TDE terminal emulator

DISTNAME =		yakuake-${TDE_V}

#WANTLIB =		???

MASTER_SITES =		${MASTER_SITE_TDE:=applications/}

MODULES =		devel/gettext \
			x11/tde
BUILD_DEPENDS =		devel/automake/${AUTOMAKE_VERSION} \
			devel/autoconf/${AUTOCONF_VERSION}
#RUN_DEPENDS =		???
#LIB_DEPENDS =		???
#REGRESS_DEPENDS =	???

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#REGRESS_FLAGS =	???

#USE_GMAKE =		Yes
#USE_GROFF =		Yes
#USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	automake autoconf
#CONFIGURE_SCRIPT =	??? (if other than configure)
CONFIGURE_ARGS +=	${MODTDE_CONFIGURE_ARGS}
CONFIGURE_ENV =		${MODTDE_CONFIGURE_ENV}
AUTOCONF_VERSION =	2.61
AUTOMAKE_VERSION =	1.10

#NO_BUILD =		Yes
#NO_REGRESS =		Yes

#CFLAGS =		???
#LDFLAGS =		???
#MAKE_FILE =		???
#PKG_ARCH =		??? (* for arch-independent packages)
WRKDIST =		${WRKDIR}/applications/yakuake
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

#ALL_TARGET =		???
#INSTALL_TARGET =	???
#REGRESS_TARGET =	???

post-patch:
	cd ${WRKSRC} && env AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} ${LOCALBASE}/bin/aclocal
	cd ${WRKSRC} && env AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} ${LOCALBASE}/bin/automake
	@${MODTDE_post-patch}

.include <bsd.port.mk>
