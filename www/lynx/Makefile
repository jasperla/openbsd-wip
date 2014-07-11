# $OpenBSD$

V =		2.8.9
PL =		1
COMMENT =	console Internet browser
DISTNAME =	lynx${V}dev.${PL}
PKGNAME =	lynx-${V}pl${PL}
CATEGORIES =	www net

HOMEPAGE =	http://lynx.isc.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c idn ncurses

MASTER_SITES =	http://lynx.isc.org/current/

LIB_DEPENDS =	devel/libidn

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-cfg-file="${SYSCONFDIR}/lynx-devel/lynx.cfg" \
			--with-lss-file="${SYSCONFDIR}/lynx-devel/lynx.lss"

MAKE_FILE =	makefile

FAKE_FLAGS =	sysconfdir="${PREFIX}/share/lynx"

NO_TEST =	Yes
WRKDIST =	${WRKDIR}/lynx${V:C/\./-/g}

.include <bsd.port.mk>
