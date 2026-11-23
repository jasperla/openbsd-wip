COMMENT =	library required by dictd-server and dictd-client.

DISTNAME =	libmaa-1.4.7

CATEGORIES =	devel

SHARED_LIBS += 	maa                       4.0 # 4.0

HOMEPAGE =	http://www.dict.org

MAINTAINER =    Moritz Buhl <mbuhl@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=dict/}

CONFIGURE_STYLE =	none

WRKSRC =	${WRKDIST}/maa
MAKE_ENV =	SRCDIR_maa=${WRKSRC}
FAKE_FLAGS =	LIBDIR=${LOCALBASE}/lib

.include <bsd.port.mk>
