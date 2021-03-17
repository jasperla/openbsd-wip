# $OpenBSD$

COMMENT =	statically typed, embedded functional programming language
CATEGORIES =	lang

GH_ACCOUNT =	never-lang
GH_PROJECT =	never
GH_TAGNAME =	v1.8.9

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/bison

# No upstream install target.
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/never ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/include/never
	${INSTALL_DATA} ${WRKSRC}/include/{nev,object,program}.h \
		${PREFIX}/include/never
	${INSTALL_DATA} ${WRKBUILD}/libnev.a ${PREFIX}/lib

.include <bsd.port.mk>
