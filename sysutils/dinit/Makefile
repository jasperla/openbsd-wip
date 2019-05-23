# $OpenBSD: Makefile.template,v 1.80 2019/04/01 07:35:45 bentley Exp $
#
# TODO:
#  * Decide if we want to run a system instance as root or its own user.
#  * Wait for a upstream release.

V =		0.5.1
COMMENT =	service monitoring / "init" system 
DISTNAME =	dinit-${V}

GH_ACCOUNT =	davmac314
GH_PROJECT =	dinit
#GH_TAGNAME =	${V}
GH_COMMIT =	6824fdef7466f2a31c696923dcc29af0e885ce9d

CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/davmac314/dinit

MAINTAINER =	Edd Barrett <edd@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 		${COMPILER_LIBCXX} c m

COMPILER =		base-clang ports-gcc
USE_GMAKE =		Yes
MAKE_ENV +=		CXXFLAGS="${CXXFLAGS}" \
			DESTDIR=${WRKINST} \
			VARBASE=${VARBASE}

TEST_TARGET =		check

EXAMPLES_DIR =		${PREFIX}/share/examples/dinit
DOCS_DIR =		${PREFIX}/share/doc/dinit
post-install:
	${INSTALL_DATA_DIR} ${EXAMPLES_DIR}
	${INSTALL_DATA} ${FILESDIR}/boot.example ${EXAMPLES_DIR}/boot
	${INSTALL_DATA} ${FILESDIR}/mpd.example ${EXAMPLES_DIR}/mpd

	${INSTALL_DATA_DIR} ${DOCS_DIR}
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOCS_DIR}
	${INSTALL_DATA} ${WRKSRC}/doc/COMPARISON ${DOCS_DIR}
	${INSTALL_DATA} ${WRKSRC}/doc/DESIGN ${DOCS_DIR}

.include <bsd.port.mk>
