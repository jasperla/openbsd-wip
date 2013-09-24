# $OpenBSD$

COMMENT =	ANSI BASIC interpreter
DISTNAME =	bas-2.3
CATEGORIES =	lang

HOMEPAGE =	http://www.moria.de/~michael/bas/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c curses m

MASTER_SITES =	http://www.moria.de/~michael/bas/

MODULES =	devel/gettext

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bas ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/libbas.a ${PREFIX}/lib
	${INSTALL_MAN} ${WRKSRC}/bas.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/locale/de/LC_MESSAGES
	${INSTALL_DATA} ${WRKSRC}/de.mo ${PREFIX}/share/locale/de/LC_MESSAGES/bas.mo

.include <bsd.port.mk>
