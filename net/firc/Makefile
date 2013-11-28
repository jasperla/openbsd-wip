# $OpenBSD$

V =		1.24
COMMENT =	user friendy console IRC client
DISTNAME =	fi-${V}
PKGNAME =	firc-${V}
EXTRACT_SUFX =	.tgz
CATEGORIES =	net

HOMEPAGE =	http://www.vanheusden.com/f-irc/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ncursesw panelw pthread

MASTER_SITES =	http://www.vanheusden.com/f-irc/

MAKE_FLAGS =	CC="${CC}" DEBUG="${CFLAGS}" \
		DESTDIR= \
		SYSCONFDIR="${SYSCONFDIR}"

NO_TEST =	Yes

post-patch:
	perl -pi -e "s,ncursesw/,,g" ${WRKSRC}/*

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/fi ${PREFIX}/bin/f-irc
	${INSTALL_MAN} ${WRKSRC}/f-irc.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/f-irc
	${INSTALL_DATA} ${WRKSRC}/*.txt ${PREFIX}/share/doc/f-irc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/f-irc
	${INSTALL_DATA} ${WRKSRC}/firc.* ${PREFIX}/share/examples/f-irc

.include <bsd.port.mk>
