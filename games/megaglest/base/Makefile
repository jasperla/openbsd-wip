# $OpenBSD$

COMMENT =		open source 3D-real-time strategy game

DISTNAME =		megaglest-source-3.6.0
PKGNAME =		${DISTNAME:S/source-//}

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL GLEW GLU ICE SDL SM X11 Xext c crypto curl fontconfig
WANTLIB += freetype ftgl idn jpeg lua m ogg openal png pthread
WANTLIB += ssl stdc++ vorbis vorbisfile xerces-c z

EXTRACT_SUFX =		.tar.xz

MODULES =		devel/cmake

LIB_DEPENDS =		audio/libvorbis \
			audio/openal \
			devel/libidn \
			devel/sdl \
			graphics/ftgl \
			graphics/glew \
			graphics/jpeg \
			graphics/png \
			lang/lua \
			net/curl \
			textproc/xerces-c
RUN_DEPENDS = 		archivers/p7zip,-main \
			devel/desktop-file-utils \
			games/megaglest/data

CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE=RELEASE \
			-DWANT_SVN_STAMP=OFF

NO_REGRESS =		Yes

WRKDIST = 		${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
