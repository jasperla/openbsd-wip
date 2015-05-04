# $OpenBSD$
COMMENT =		libv4l userspace library

DISTNAME =		v4l-utils-1.6.2

SHARED_LIBS +=  v4l1                      0.0 # 0.0
SHARED_LIBS +=  v4l2                      0.0 # 0.0
SHARED_LIBS +=  v4l2rds                   0.0 # 0.0
SHARED_LIBS +=  v4lconvert                0.0 # 0.0

CATEGORIES =		multimedia

HOMEPAGE =		http://git.linuxtv.org/v4l-utils.git

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c jpeg m pthread

MASTER_SITES =		http://linuxtv.org/downloads/v4l-utils/

EXTRACT_SUFX =		.tar.bz2

BUILD_DEPENDS =		devel/argp-standalone
LIB_DEPENDS =		graphics/jpeg

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
