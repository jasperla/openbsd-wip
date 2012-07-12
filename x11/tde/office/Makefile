# $OpenBSD$

VMEM_WARNING =		Yes

COMMENT =		office suite for TDE

DISTNAME =		koffice-${TDE_V}

#SHARED_LIBS =		???

CATEGORIES =		x11 x11/tde productivity

#WANTLIB =		???

MASTER_SITES =		${MASTER_SITE_TDE:=applications/}

#MODULES =		???
#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
# XXX claims to support poppler, but never tests for it
#LIB_DEPENDS =		???
#REGRESS_DEPENDS =	???

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#REGRESS_FLAGS =	???

#USE_GMAKE =		Yes
#USE_GROFF =		Yes
#USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	autoconf
#CONFIGURE_SCRIPT =	??? (if other than configure)
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--without-arts \
			--without-libwv2
CONFIGURE_ENV =		LDFLAGS="-Wl,-rpath-link,${X11BASE}/lib"

#NO_BUILD =		Yes
#NO_REGRESS =		Yes

#CFLAGS =		???
#LDFLAGS =		???
#MAKE_FILE =		???
#PKG_ARCH =		??? (* for arch-independent packages)
WRKDIST =		${WRKDIR}/applications/koffice
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}

#ALL_TARGET =		???
#INSTALL_TARGET =	???
#REGRESS_TARGET =	???

.include <bsd.port.mk>
