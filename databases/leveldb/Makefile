# $OpenBSD:$

COMMENT =	fast key-value storage library

GH_ACCOUNT =	google
GH_PROJECT =	leveldb
GH_TAGNAME =	v1.20

SHARED_LIBS +=  leveldb                   0.0 # 0.0

CATEGORIES =	databases devel

WANTLIB += m pthread stdc++

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV=		CC="${CC}" CXX="${CXX}"

USE_GMAKE =		Yes

TEST_TARGET=		check

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/leveldb
	${INSTALL_DATA} ${WRKSRC}/include/leveldb/* ${PREFIX}/include/leveldb
	${INSTALL_DATA} ${WRKSRC}/out-static/*.a \
		${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/out-shared/libleveldb.so.${GH_TAGNAME:S/v//} \
		${PREFIX}/lib/libleveldb.so.${LIBleveldb_VERSION}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/leveldb
	${INSTALL_DATA} ${WRKSRC}/doc/*.md ${PREFIX}/share/doc/leveldb
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/leveldb

.include <bsd.port.mk>
