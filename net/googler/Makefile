# $OpenBSD$

COMMENT =	Google from the terminal
CATEGORIES =	net

GH_ACCOUNT =	jarun
GH_PROJECT =	googler
GH_TAGNAME =	v4.1

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
MODPY_ADJ_FILES =	googler

RUN_DEPENDS =	x11/xsel

NO_BUILD =	Yes

NO_TEST =	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/googler ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/googler.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
