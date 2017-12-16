# $OpenBSD$

V =		20171024
COMMENT =	open-source version of the classic Jazz Jackrabbit games
DISTNAME =	openjazz-${V}
EXTRACT_SUFX =	.tar.xz
CATEGORIES =	games x11

HOMEPAGE =	http://www.alister.eu/jazz/oj/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL c m xmp z

MASTER_SITES =	https://github.com/AlisterT/openjazz/releases/download/${V}/

LIB_DEPENDS =	audio/libxmp \
		devel/sdl

CONFIGURE_STYLE =	gnu

pre-configure:
	sed -i 's,$${LOCALBASE},${LOCALBASE},g' ${WRKSRC}/src/menu/mainmenu.cpp

.include <bsd.port.mk>
