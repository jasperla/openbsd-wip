COMMENT =	filename pattern matching library

DIST_TUPLE +=	github Loadmaster fpattern v1.9 .

CATEGORIES =	devel

# MIT
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE =	none

NO_BUILD =		Yes

do-install:
	mkdir -p ${PREFIX}/include/fpattern
	cp -v ${WRKSRC}/*.c ${WRKSRC}/*.h ${PREFIX}/include/fpattern

.include <bsd.port.mk>
