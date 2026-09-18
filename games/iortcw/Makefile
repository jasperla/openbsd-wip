BROKEN-i386=	need to free up a register
ONLY_FOR_ARCHS= amd64 i386 macppc

# custom JIT (see VM_CallCompiled() in code/qcommon/vm_x86.c)
USE_NOBTCFI=	Yes

COMMENT=	Merge of ioquake3 features and fixes into RTCW code bases

DISTNAME=	iortcw-2024.05.26
REVISION=	1

GH_ACCOUNT=	iortcw
GH_PROJECT=	iortcw
GH_COMMIT=	438e7d413b5f7277187c35b032eb0ef9093ae778

CATEGORIES=	games

HOMEPAGE=	https://github.com/iortcw

# GPLv2+
PERMIT_PACKAGE=	Yes

# openal is statically linked
WANTLIB += SDL2 c curl m ogg openal pthread

LIB_DEPENDS=	audio/libogg \
		audio/openal \
		devel/sdl2 \
		net/curl
		
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+4,-guic

MAKE_ENV=	V=1 USE_VOIP=0 USE_INTERNAL_OGG=0 CC="${CC}" TOOLS_CC="${CC}"
ALL_TARGET=	"release"
USE_GMAKE=	Yes

DEBUG_PACKAGES=	${BUILD_PACKAGES}
WRKSRC=	${WRKDIR}/${GH_PROJECT}-${GH_COMMIT}/SP

NO_TEST=	Yes

QUAKE_ARCH-amd64 = 	amd64
QUAKE_ARCH-i386 = 	i386
QUAKE_ARCH-powerpc = 	ppc
QUAKE_ARCH-${MACHINE_ARCH} ?= ${MACHINE_ARCH}
QUAKE_ARCH =		${QUAKE_ARCH-${MACHINE_ARCH}}
SUBST_VARS+=	QUAKE_ARCH

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/iortcw/
	${INSTALL_DATA_DIR} ${PREFIX}/share/iortcw/main/
	${INSTALL_PROGRAM} \
		${WRKSRC}/build/release-openbsd-x86_64/main/{cgame.sp,qagame.sp,ui.sp}.${QUAKE_ARCH}.so \
		${PREFIX}/share/iortcw/main/
	${INSTALL_PROGRAM} \
		${WRKSRC}/build/release-openbsd-x86_64/renderer_sp_{opengl1,rend2}_${QUAKE_ARCH}.so \
		${PREFIX}/share/iortcw/
	${INSTALL_PROGRAM} \
		${WRKSRC}/build/release-openbsd-x86_64/iowolfsp.x86_64 \
		${PREFIX}/bin/iortcw
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	cp -R ${FILESDIR}/iortcw.desktop \
		${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/icons/hicolor/512x512/apps
	cp -R ${WRKDIR}/${GH_PROJECT}-${GH_COMMIT}/SP/misc/wolf512.png \
		${PREFIX}/share/icons/hicolor/512x512/apps/


.include <bsd.port.mk>
