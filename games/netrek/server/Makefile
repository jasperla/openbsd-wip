# $OpenBSD$

COMMENT =		networked Star Trek strategy game, server

V =			2.18.0
DISTNAME =		netrek-server-vanilla-${V}
PKGNAME =		netrek-server-${V}

WANTLIB +=		c gdbm m

MASTER_SITES =		${HOMEPAGE}/files/Vanilla/

LIB_DEPENDS =		databases/gdbm

FAKE_FLAGS =		SYSCONFDIR="${PREFIX}/share/examples/netrek-server"

CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
LOCALSTATEDIR =		/var/netrekd
SYSCONFDIR =		/etc/netrekd

SUBST_VARS +=		LOCALSTATEDIR

.include <bsd.port.mk>
