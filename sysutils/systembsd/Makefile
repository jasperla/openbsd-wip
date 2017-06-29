# $OpenBSD$

COMMENT=		systemd interfaces implementation

DISTNAME=		systembsd-0.0.1

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		https://uglyman.kremlin.cc/gitweb/gitweb.cgi?p=systembsd.git

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 pcre polkit-agent-1
WANTLIB += polkit-gobject-1 pthread

MODULES=		devel/gettext

# WIP: code is constently changing
BUILD_DEPENDS +=	devel/git
DISTFILES=		# empty
EXTRACT_ONLY=		# empty
WRKDIST=		${WRKDIR}/systembsd

# XXX would be nice to have regression tests
NO_TEST=		Yes

LIB_DEPENDS=		sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=		sysutils/consolekit

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS +=		x11/dbus,-suid

FAKE_FLAGS=		PREFIX=${TRUEPREFIX} \
			SYSCONFDIR=${PREFIX}/share/examples/systembsd

SUBST_VARS=		OSREV

do-extract:
	cd ${WRKDIR} && \
		${LOCALBASE}/bin/git clone git://uglyman.kremlin.cc/git/systembsd.git

post-install:
	${SUBST_CMD} -c -o root -g wheel -m 0644 ${FILESDIR}/os-release.in \
		${PREFIX}/share/examples/systembsd/os-release

.include <bsd.port.mk>
