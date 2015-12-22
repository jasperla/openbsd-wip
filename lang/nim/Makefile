# $OpenBSD: Makefile,v 1.1.1.1 2015/10/19 21:50:14 juanfra Exp $

ONLY_FOR_ARCHS =	i386 amd64

COMMENT =		statically typed, imperative programming language

VERSION =		0.12.0
DISTNAME =		nim-${VERSION}
EXTRACT_SUFX =		.tar.xz

CATEGORIES =		lang

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

HOMEPAGE =		http://nim-lang.org/
MASTER_SITES =		http://nim-lang.org/download/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m

TEST_DEPENDS =		lang/nim

post-patch:
	find ${WRKSRC} -iname 'stdlib_nativesockets.c' \
		-exec sed -i '/hints\.ai\_flags\ \=\ AI\_V4MAPPED\;/d' {} \;

do-build:
	cd ${WRKDIST} && ${SETENV} CC="${CC}" LINKER="${CC}" \
		COMP_FLAGS="${CFLAGS}" sh build.sh
	# slow machines can get a head of themselves and fail to link
	cd ${WRKSRC} && ${SETENV} bin/nim c --parallelBuild:1 koch
	# https://github.com/nim-lang/Nim/issues/3506
	cd ${WRKSRC} && ${SETENV} ./koch boot -d:release --parallelBuild:1 \
		-p:. -p:lib/packages/docutils

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/bin/nim ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/lib/nim
	cp -R ${WRKSRC}/lib/* ${PREFIX}/lib/nim
	chown -R ${LIBOWN}:${LIBGRP} ${PREFIX}/lib/nim
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nim
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/nim
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nim
	${INSTALL_DATA} ${WRKSRC}/config/*.cfg ${PREFIX}/share/examples/nim

do-test:
	cd ${WRKSRC} && ${SETENV} ./koch test all -d:release --parallelBuild:1 \
		-p:. -p:lib/packages/docutils

.include <bsd.port.mk>
