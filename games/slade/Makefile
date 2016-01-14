# $OpenBSD$

COMMENT =		Doom level editor

GH_PROJECT =		SLADE
GH_TAGNAME =		3.1.0.5
GH_ACCOUNT =		sirjuddington
PKGNAME =		${DISTNAME:L}

CATEGORIES =		games

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =		http://slade.mancubus.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/cmake \
			devel/gettext \
			gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS +=	c++

# XXX: sort out wxwidgets .so links first
#WANTLIB

BUILD_DEPENDS =		archivers/p7zip
LIB_DEPENDS =		audio/fluidsynth \
			graphics/freeimage \
			graphics/ftgl \
			multimedia/sfml \
			x11/wxWidgets3

ALL_TARGET =		all pk3

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/SLADE
	${INSTALL_PROGRAM} ${WRKBUILD}/slade ${PREFIX}/lib/SLADE
	${INSTALL_DATA} ${WRKBUILD}/slade.pk3 ${PREFIX}/lib/SLADE
	@${SUBST_PROGRAM} ${FILESDIR}/slade ${PREFIX}/bin/slade

.include <bsd.port.mk>
