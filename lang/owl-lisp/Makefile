COMMENT =	functional dialect of Scheme

VERSION =	0.2.2

DISTNAME =	owl-v${VERSION}-2f7e001540485c77b5f744081e2f5f121fa7eb3a
PKGNAME =	owl-script-${VERSION}

DIST_TUPLE +=	gitlab owl-lisp owl v${VERSION} .

CATEGORIES =	lang

# https://gitlab.com/owl-lisp/owl
HOMEPAGE =	https://haltp.org/owl

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c

MAKE_FLAGS +=	CC="${CC}"
MAKE_FLAGS +=	CFLAGS="${CFLAGS}"
MAKE_FLAGS +=	PREFIX="${PREFIX}"
MAKE_FLAGS +=	MANDIR=/man

TEST_TARGET =	fasltest test random-test

# install uncompressed manpages
post-install:
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/ol.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/doc/ovm.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
