# $OpenBSD:
#
COMMENT =	tiling window manager based on binary space partitioning

GH_ACCOUNT =	baskerville
GH_PROJECT =	bspwm
GH_TAGNAME =	0.9.2

CATEGORIES =	x11

# BSD
PERMIT_PACKAGE_CDROM =	Yes

USE_GMAKE =		Yes

NO_TEST =		Yes

MAKE_ENV =	CC="${CC}" CFLAGS="${CFLAGS}" \
		PREFIX="${LOCALBASE}" \
		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/bspwm ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKDIST}/bspc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/doc/bspwm.1 ${PREFIX}/man1
	${INSTALL_MAN} ${WRKDIST}/doc/bspc.1 ${PREFIX}/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/bspwm/
	${INSTALL_DATA} ${WRKSRC}/examples/{bspwmrc,sxhkdrc} \
		${PREFIX}/share/examples/bspwm/

.include <bsd.port.mk>
