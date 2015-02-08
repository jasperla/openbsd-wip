# $OpenBSD$

COMMENT =	graphical gopher client
DISTNAME =	gophervr-0.5.0
CATEGORIES =	net x11

HOMEPAGE =	http://www.floodgap.com/software/gophervr/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Mostly GPLv2+
# See COPYRIGHT for full details.
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xext Xm Xt c m

MASTER_SITES =	XXX: NOT YET

BUILD_DEPENDS =	devel/imake

LIB_DEPENDS =	x11/openmotif,-main

USE_GMAKE =	Yes
MAKE_FLAGS =	CC="${CC}" \
		CLIENTLIB="${SYSCONFDIR}/gopher" \
		FONTLIB="${PREFIX}/share/gophervr"
ALL_TARGET =	openbsd

NO_TEST =	Yes
WRKDIST =	${WRKDIR}/gophervr

pre-configure:
	perl -pi -e "s,/usr/local/lib/hershey,${PREFIX}/share/gophervr,g" ${WRKSRC}/libvogl/hershey/src/htext.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gophervr/gophervr ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gophervr
	${INSTALL_DATA} ${WRKSRC}/gophervr/gophervr.help ${PREFIX}/share/doc/gophervr
	${INSTALL_DATA_DIR} ${PREFIX}/share/gophervr
	${INSTALL_DATA} ${WRKSRC}/gophervr/futura.hfont ${PREFIX}/share/gophervr

.include <bsd.port.mk>
