# $OpenBSD$

V =		2.2
COMMENT =	Portable Hardware Locality
DISTNAME =	hwloc-${V}.0
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	devel

SHARED_LIBS +=	hwloc                     0.0 # 17.0

HOMEPAGE =	https://www.open-mpi.org/projects/hwloc/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ICE SM X11 Xext Xrender c cairo curses expat fontconfig
WANTLIB += freetype iconv lzma m pciaccess pixman-1 png pthread
WANTLIB += xcb xcb-render xcb-shm xml2 z

MASTER_SITES =	https://download.open-mpi.org/release/hwloc/v${V}/

BUILD_DEPENDS =	shells/bash

LIB_DEPENDS =	graphics/cairo \
		textproc/libxml

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	gnu

FAKE_FLAGS =	sysconfdir="${LOCALBASE}/share/hwloc"

.include <bsd.port.mk>
