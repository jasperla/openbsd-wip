# $OpenBSD$

COMMENT =		Telegram CLI client

V =			20160323
DISTNAME =		telegram-cli-$V

CATEGORIES =		net

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c config crypto curses ereadline event_core execinfo
WANTLIB += jansson ${MODLUA_WANTLIB} m pthread ssl util z

MASTER_SITES =		https://distfiles.stumpf.co/

MODULES =		lang/lua
MODLUA_VERSION =	5.2
LIB_DEPENDS =		devel/libevent2 \
			devel/readline \
			devel/libconfig \
			devel/libexecinfo \
			devel/jansson

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LIBS="-ltermcap"

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/telegram-cli ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/debian/telegram-cli.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
