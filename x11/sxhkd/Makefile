# $OpenBSD:
#
COMMENT =	simple x hotkey daemon

GH_ACCOUNT =	baskerville
GH_PROJECT =	sxhkd
GH_TAGNAME =	0.5.8

CATEGORIES =	x11

# BSD
PERMIT_PACKAGE_CDROM =	Yes

USE_GMAKE =		Yes

NO_TEST =		Yes

MAKE_ENV =	CC="${CC}" CFLAGS="${CFLAGS}" \
		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/sxhkd ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/doc/sxhkd.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sxhkd/
	cp -rp ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/sxhkd/

.include <bsd.port.mk>
