# $OpenBSD$

COMMENT =		X server replacement
DISTNAME =		wayland-1.13.0

SHARED_LIBS =	wayland-client		0.0 # 3.0
SHARED_LIBS +=	wayland-cursor		0.0 # 0.0
SHARED_LIBS +=	wayland-server		0.0 # 1.0

CATEGORIES =		graphics x11
HOMEPAGE =		http://wayland.freedesktop.org/
MAINTAINER =		Vadim Zhukov <persgray@gmail.com>

# MIT, examples (not packaged) are GPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c expat ffi iconv lzma m pthread xml2 z

MASTER_SITES =		http://wayland.freedesktop.org/releases/
EXTRACT_SUFX =		.tar.xz

BUILD_DEPENDS =		math/graphviz \
			textproc/xmlto
LIB_DEPENDS =		archivers/xz \
			devel/libffi \
			converters/libiconv \
			textproc/libxml

SEPARATE_BUILD =	Yes
# uses gmake syntax
USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu autoconf automake

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.14

post-patch:
	cd ${WRKSRC}; AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake
	touch ${WRKSRC}/aclocal.m4

.include <bsd.port.mk>
