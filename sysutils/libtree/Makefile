COMMENT =	ldd as a tree

GH_ACCOUNT =	haampie
GH_PROJECT =	libtree
GH_TAGNAME =	v3.1.1

CATEGORIES =	sysutils

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c

USE_GMAKE =		Yes

TEST_TARGET =		check

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/libtree ${PREFIX}/bin

	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/libtree.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
