# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		replacement for Libevent2 HTTP API

V = 			1.2.9
DISTNAME =		libevhtp-${V}

SHARED_LIBS =		evhtp 0.0

CATEGORIES =		devel

#HOMEPAGE =		???	URL

#MAINTAINER =		???

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto event_core event_openssl event_pthreads onig pthread ssl

MASTER_SITES =		https://github.com/ellzey/libevhtp/archive/
DISTFILES = 		${DISTNAME}${EXTRACT_SUFX}{$V${EXTRACT_SUFX}}

MODULES =		devel/cmake
LIB_DEPENDS =		devel/libevent2 \
			textproc/oniguruma

CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=Release\
			-DLIBEVENT_INCLUDE_DIR=${LOCALBASE}/include \
			-DEVHTP_BUILD_SHARED=ON

TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
