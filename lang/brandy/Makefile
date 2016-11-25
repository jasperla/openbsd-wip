# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	interpreter for BBC Basic (Basic V)

DISTNAME =	brandy-1.20.1

CATEGORIES =	lang

HOMEPAGE =	http://jaguar.orpheusweb.co.uk/branpage.html

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	SDL c m

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=brandy/}

LIB_DEPENDS =	devel/sdl

CFLAGS +=	-I${LOCALBASE}/include/SDL

MAKE_ENV =	LDFLAGS="-L${LOCALBASE}/lib"

MAKE_FILE =	makefile

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/brandy ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/brandy
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/brandy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/brandy
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/brandy

.include <bsd.port.mk>
