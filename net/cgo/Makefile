# $OpenBSD$

COMMENT =	simple terminal based gopher client
DISTNAME =	cgo-20130722
CATEGORIES =	net

HOMEPAGE =	https://github.com/kieselsteini/cgo/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =	http://devio.us/~bcallah/source/

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}"

ALL_TARGET =	default

post-patch:
	perl -pi -e "s,firefox,${LOCALBASE}/bin/firefox,g|s,display,${LOCALBASE}/bin/display,g|s,mplayer,${LOCALBASE}/bin/mplayer,g" ${WRKSRC}/cgo.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cgo ${PREFIX}/bin

.include <bsd.port.mk>
