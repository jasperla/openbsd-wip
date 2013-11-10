# $OpenBSD$

COMMENT =	free module tracker editor and player
# Later versions are broken.
DISTNAME =	schismtracker-20100101
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	audio x11

HOMEPAGE =	http://schismtracker.org/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL X11 Xext Xxf86misc Xv c m pthread stdc++

MASTER_SITES =	http://schismtracker.org/dl/

MODULES =	lang/python

LIB_DEPENDS =	devel/sdl

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-mercurial

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/schismtracker ${PREFIX}/bin

.include <bsd.port.mk>
