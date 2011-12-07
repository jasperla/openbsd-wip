# $OpenBSD: Makefile,v 1.37 2011/09/16 10:02:36 espie Exp $

COMMENT =	3D creation software

DISTNAME =	blender-2.60a

CATEGORIES =	graphics

HOMEPAGE =	http://www.blender.org/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://download.blender.org/source/ \
		http://mirror.cs.umn.edu/blender.org/source/ \
		http://public.planetmirror.com/pub/blender/source/

MODULES =	devel/cmake \
		lang/python \
		devel/gettext
MODPY_VERSION =	3.2
#MODPY_VERSION = ${PYTHON3_VERSION}

CONFIGURE_ARGS =	-DPYTHON_LIBRARY="${LOCALBASE}/lib/libpython${MODPY_VERSION}m.so" \
			-DPYTHON_INCLUDE_DIR="${MODPY_INCDIR}" \
			-DPYTHON_VERSION=${MODPY_VERSION} \
			-DWITH_BUILTIN_GLEW=OFF

LIB_DEPENDS =	graphics/png \
		graphics/jpeg \
		graphics/glew \
		graphics/openexr \
		graphics/tiff \
		devel/sdl \
		audio/openal \
		graphics/openjpeg \
		math/fftw3 \
		${MODPY_LIB_DEPENDS}
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gnome/librsvg

WANTLIB  = GL GLEW GLU Half Iex IlmImf IlmThread Imath SDL X11
WANTLIB += Xi c freetype jpeg m openal openjpeg png pthread
WANTLIB += stdc++ tiff util z ${MODPY_WANTLIB}

NO_REGRESS =	Yes

CFLAGS +=	-I${LOCALBASE}/include

MODPY_ADJ_FILES =	release/bin/blender-thumbnailer.py \
			release/scripts/modules/blend_render_info.py

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/blender ${PREFIX}/bin
	perl -pi -e 's#TRUEPREFIX#${TRUEPREFIX}#g' ${PREFIX}/bin/blender
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/blender ${PREFIX}/bin/blender-bin
	${INSTALL_SCRIPT} ${WRKSRC}/release/bin/blender-thumbnailer.py \
		${PREFIX}/bin/blender-thumbnailer
	${INSTALL_DATA_DIR} ${PREFIX}/share/blender/scripts
	${INSTALL_DATA_DIR} ${PREFIX}/share/blender/datafiles
	cd ${WRKSRC}/release/scripts && pax -rw . \
		${PREFIX}/share/blender/scripts
	cd ${WRKSRC}/release/scripts && pax -rw . \
		${PREFIX}/share/blender/datafiles
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/blender
	${INSTALL_DATA} ${WRKSRC}/release/text/*license* \
		${PREFIX}/share/doc/blender
	${INSTALL_DATA} ${WRKSRC}/release/text/copy* \
		${PREFIX}/share/doc/blender
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/release/freedesktop/blender.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} \
		${WRKSRC}/release/freedesktop/icons/scalable/apps/blender.svg \
		${PREFIX}/share/pixmaps
	${INSTALL_MAN} ${WRKSRC}/doc/manpage/blender.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
