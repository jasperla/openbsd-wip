# $OpenBSD$

COMMENT =	highly portable open source gopher server
DISTNAME =	motsognir-1.0.4
CATEGORIES =	net

HOMEPAGE =	http://sourceforge.net/projects/motsognir/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=motsognir/}

NO_TEST =	Yes

pre-configure:
	perl -pi -e "s,-O3,,g" ${WRKSRC}/Makefile
	@cp ${WRKSRC}/rc_d_motsognir ${WRKSRC}/motsognir.rc

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/motsognir ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/motsognir.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/motsognir
	${INSTALL_DATA} ${WRKSRC}/motsognir.conf ${PREFIX}/share/examples/motsognir
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/motsognir
	${INSTALL_DATA} ${WRKSRC}/{changes.txt,manual.pdf} \
		${PREFIX}/share/doc/motsognir

.include <bsd.port.mk>
