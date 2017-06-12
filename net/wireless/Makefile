# $OpenBSD$
COMMENT =	automatically scan for and configure wireless networks

VERSION =	2

GH_ACCOUNT =	farhaven
GH_PROJECT =	wireless
GH_TAGNAME =	v$(VERSION)

CATEGORIES =	net

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/wireless ${PREFIX}/bin
		${INSTALL_MAN} ${WRKSRC}/wireless.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
