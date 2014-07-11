# $OpenBSD$

V =		2.8.9
PL =		1
COMMENT =	console Internet browser
DISTNAME =	lynx${V}dev.${PL}
PKGNAME =	lynx-current-${V}pl${PL}
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	www net

HOMEPAGE =	http://lynx.isc.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += bz2 c crypto idn ncurses ssl z

MASTER_SITES =	http://lynx.isc.org/current/

MODULES =	devel/gettext

LIB_DEPENDS =	archivers/bzip2 \
		devel/libidn

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--program-transform-name=s,$$,-current, \
			--enable-idna \
			--enable-ipv6 \
			--enable-widec \
			--with-ssl=/usr \
			--with-bzlib \
			--with-zlib \
			--with-cfg-file="${SYSCONFDIR}/lynx-current/lynx.cfg" \
			--with-lss-file="${SYSCONFDIR}/lynx-current/lynx.lss"

MAKE_FILE =	makefile

FAKE_FLAGS =	sysconfdir="${PREFIX}/share/lynx-current"

NO_TEST =	Yes
WRKDIST =	${WRKDIR}/lynx${V:C/\./-/g}

.include <bsd.port.mk>
