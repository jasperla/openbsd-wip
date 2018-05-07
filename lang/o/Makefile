# $OpenBSD$

COMMENT =	stack-based golfing esoteric language
DISTNAME =	o-2.1.1
CATEGORIES =	lang

GH_ACCOUNT =	phase
GH_PROJECT =	o
GH_COMMIT =	1c4015f3247695c0c569a532cfa67c42ea413f1e

HOMEPAGE =	https://jadon.io/o/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

BUILD_DEPENDS =	devel/libregexp9 \
		devel/libutf

# avoid patching
pre-configure:
	sed -i 's,"libregexp/regexp9.h",<regexp9.h>,g' ${WRKSRC}/o.c

# all target is broken and depends on gmake
do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} -I${LOCALBASE}/include ${LDFLAGS} \
		-o o o.c -L${LOCALBASE}/lib -lm -lregexp9 -lutf

# no install target
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/o ${PREFIX}/bin

# unit testing is built in to a binary with a cpp define
do-test:
	cd ${WRKSRC} && ${CC} ${CFLAGS} -I${LOCALBASE}/include ${LDFLAGS} \
		-DUTEST -o otest o.c -L${LOCALBASE}/lib -lm -lregexp9 -lutf \
			&& ./otest

.include <bsd.port.mk>
