# $OpenBSD$

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		role playing game

V =			0.5.6
DISTNAME =		sumwars-${V}-src
PKGNAME =		summoningwars-${V}

SUBST_VARS +=		V

CATEGORIES =		games

HOMEPAGE =		http://sumwars.org/wiki/Main_Page

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3+ / CC-by-sa 3.0 for data
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += CEGUIBase CEGUIOgreRenderer OIS OgreMain OgreRTShaderSystem
WANTLIB += OgreTerrain PocoFoundation X11 Xrandr alut c lua m
WANTLIB += ogg openal physfs pthread stdc++ vorbis vorbisfile

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=sumwars/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake \
			devel/gettext
LIB_DEPENDS =		x11/cegui \
			audio/freealut \
			audio/libvorbis \
			devel/physfs \
			net/poco

CONFIGURE_ARGS += \
	-DCMAKE_EXE_LINKER_FLAGS="-L${LOCALBASE}/lib -liconv -lintl" \
	-DCMAKE_BUILD_TYPE=Release

NO_REGRESS =		Yes

WRKDIST =		${WRKDIR}/sumwars-${V}

CFLAGS +=		-pthread

#pre-configure:
#	${SUBST_CMD} ${WRKSRC}/CMakeModules/FindOGRE.cmake

.include <bsd.port.mk>
