# $OpenBSD$

COMMENT =	compiler for ooc, a small language that compiles to C99
DISTNAME =	rock-0.9.8
CATEGORIES =	lang

HOMEPAGE =	http://ooc-lang.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m pthread

MASTER_SITES =	http://devio.us/~bcallah/source/

# Links libgc.a
BUILD_DEPENDS =	devel/boehm-gc
RUN_DEPENDS =	devel/boehm-gc

USE_GMAKE =	Yes
MAKE_ENV =	OOC_LIBS=${LOCALBASE}/lib

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/rock ${PREFIX}/bin/rock
	${INSTALL_MAN} ${WRKSRC}/docs/rock.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/lib/ooc/sdk
	${INSTALL_DATA} ${WRKSRC}/*.use ${PREFIX}/lib/ooc
	cd ${WRKSRC}/sdk && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${PREFIX}/lib/ooc/sdk/{}" \;
	cd ${WRKSRC}/sdk && find * -type f -exec ${INSTALL_DATA} \
		"{}" "${PREFIX}/lib/ooc/sdk/{}" \;

.include <bsd.port.mk>
