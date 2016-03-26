# $OpenBSD$

SHARED_ONLY =		Yes

COMMENT =		X server replacement
DISTNAME =		wayland-1.10.0

SHARED_LIBS =	wayland-client		0.0 # 3.0
SHARED_LIBS +=	wayland-cursor		0.0 # 0.0
SHARED_LIBS +=	wayland-server		0.0 # 1.0

CATEGORIES =		graphics x11
HOMEPAGE =		http://wayland.freedesktop.org/
MAINTAINER =		Vadim Zhukov <persgray@gmail.com>

# MIT, examples (not packaged) are GPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c expat ffi lzma m pthread xml2 z

MODULES =		converters/libiconv

MASTER_SITES =		http://wayland.freedesktop.org/releases/
EXTRACT_SUFX =		.tar.xz

BUILD_DEPENDS =		math/graphviz
LIB_DEPENDS =		archivers/xz \
			devel/libffi \
			textproc/libxml

SEPARATE_BUILD =	Yes
# uses gmake syntax
USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu autoconf automake
CONFIGURE_ARGS =	${CONFIGURE_SHARED}

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.14

post-patch:
	cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake
	touch ${WRKSRC}/aclocal.m4

.include <bsd.port.mk>
