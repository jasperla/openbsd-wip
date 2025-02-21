COMMENT =		tiny SOCKS5 server with very moderate resource usage
V =			1.0.5
PKGNAME =		microsocks-${V}
CATEGORIES =		net
MAINTAINER =		Viacheslav Chimishuk <vchimishuk@yandex.ru>
HOMEPAGE =		https://github.com/rofl0r/microsocks
GH_ACCOUNT =		rofl0r
GH_PROJECT =		microsocks
GH_TAGNAME =		v${V}
PERMIT_PACKAGE =	Yes
COMPILER =		base-clang ports-gcc base-gcc

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/microsocks ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/microsocks.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
