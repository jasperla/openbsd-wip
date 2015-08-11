# $OpenBSD: Makefile,v 1.14 2014/11/18 10:17:18 brad Exp $

COMMENT =	lua binding of libevent
SHARED_ONLY =	Yes

V = 0.4.3
DISTNAME=	luaevent-${V}
CATEGORIES =	devel

HOMEPAGE =	http://prosody.im/doc/libevent

GH_ACCOUNT = harningt
GH_PROJECT = luaevent
GH_TAGNAME = v${V}

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	event ${MODLUA_WANTLIB}

#MASTER_SITES =	http://matthewwild.co.uk/uploads/

MODULES =	lang/lua

MODLUA_TEST_DEPENDS += devel/luaevent
MODLUA_RUN_DEPENDS +=	net/luasocket

REGRESS_FILES =	basic event_buffer-tests timertest

CFLAGS +=	-I${MODLUA_INCL_DIR} -I../include
LINK =		${CC} ${CFLAGS} -fPIC -shared -L${LOCALBASE}/lib -o

do-build:
	cd ${WRKDIST}/src && ${LINK} core.so luaevent.c buffer_event.c \
		event_buffer.c event_callback.c utility.c ${MODLUA_LIB} -levent

do-test:
.for r in ${REGRESS_FILES}
	cd ${WRKDIST}/test && ${MODLUA_BIN} $r.lua
.endfor

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}/luaevent
	${INSTALL_DATA} ${WRKSRC}/lua/luaevent.lua ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/src/*.so ${MODLUA_LIBDIR}/luaevent

.include <bsd.port.mk>
