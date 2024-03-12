COMMENT =	generic colouriser

GH_ACCOUNT =	garabik
GH_PROJECT =	grc
GH_TAGNAME =	v1.13

CATEGORIES =	misc

# https://github.com/garabik/grc
HOMEPAGE =	http://kassiopeia.juls.savba.sk/~garabik/software/grc.html

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# GPL v2
PERMIT_PACKAGE=	Yes

PKG_ARCH =	*

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
.for f in grc grcat
	${INSTALL_SCRIPT} ${WRKSRC}/${f} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${f}.1 ${PREFIX}/man/man1
.endfor

	${INSTALL_DATA_DIR} ${PREFIX}${SYSCONFDIR}
	${INSTALL_DATA} ${WRKSRC}/grc.conf ${PREFIX}${SYSCONFDIR}

	${INSTALL_DATA_DIR} ${PREFIX}/share/grc
	${INSTALL_DATA} ${WRKSRC}/colourfiles/conf.* ${PREFIX}/share/grc

.include <bsd.port.mk>
