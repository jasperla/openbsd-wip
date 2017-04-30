# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	Z80 cross assembler
DISTNAME =	pasmo-0.5.3

CATEGORIES =	devel
HOMEPAGE =	http://pasmo.speccy.org/
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ${LIBCXX}

MASTER_SITES =		http://pasmo.speccy.org/bin/
EXTRACT_SUFX =		.tgz

CONFIGURE_STYLE =	gnu
TEST_DEPENDS =		emulators/fuse

DOC_DIR =	${PREFIX}/share/doc/pasmo
EXAMPLE_DIR =	${PREFIX}/share/examples/pasmo
post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOC_DIR}
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/*.asm ${EXAMPLE_DIR}

do-test:
	cd ${WRKBUILD} && \
		./pasmo --tapbas ${FILESDIR}/test.asm test.tap && \
		${LOCALBASE}/bin/fuse -g 3x test.tap

.include <bsd.port.mk>
