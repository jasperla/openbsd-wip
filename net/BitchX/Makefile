# $OpenBSD

COMMENT =	feature rich IRC client derived from ircII
DISTNAME =	BitchX-1.2
CATEGORIES =	net

HOMEPAGE =	http://bitchx.ca/
MAINTAINER =	Connor Cooper <connor.a.cooper@gmail.com>

# BSD
# dll/europa: GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto ncurses ssl m

MASTER_SITES =	http://bitchx.ca/

BUILD_DEPENDS =	archivers/bzip2 \
		archivers/gcpio # Why?

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-ssl

NO_TEST =	Yes

.include <bsd.port.mk>
