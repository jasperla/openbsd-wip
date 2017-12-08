# $OpenBSD$

# Needs more work for other archs.
ONLY_FOR_ARCHS =	amd64

COMMENT =	simple C compiler for Unix systems
DISTNAME =	nwcc-0.8.3.1
CATEGORIES =	lang

HOMEPAGE =	http://nwcc.sourceforge.net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MASTER_SITES =	https://devio.us/~bcallah/source/

CONFIGURE_STYLE =	simple

pre-configure:
	sed -i 's,$${LOCALBASE},${LOCALBASE},g' ${WRKSRC}/cpp/n_libc.c \
		${WRKSRC}/cpp/cpp_main.c ${WRKSRC}/lex_ucpp.c

# Install script is too broken.
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nwcc{1,} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/cpp/nwcpp ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/dynextlibnwcc.o ${PREFIX}/lib/dynlibnwcc.o
	${INSTALL_DATA} ${WRKSRC}/libnwcc.o ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/nwcc/include
	${INSTALL_DATA} ${WRKSRC}/cpp/include/*.h ${PREFIX}/share/nwcc/include
	${INSTALL_DATA_DIR} ${PREFIX}/share/nwcc/bin
	${INSTALL_DATA} ${WRKSRC}/snake ${PREFIX}/share/nwcc/bin

.include <bsd.port.mk>
