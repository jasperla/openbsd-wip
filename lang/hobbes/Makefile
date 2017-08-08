# $OpenBSD$

COMMENT =	language for efficient evaluation, data storage and analysis
DISTNAME =	hobbes-0.0.20170719
CATEGORIES =	lang

GH_ACCOUNT =	Morgan-Stanley
GH_PROJECT =	hobbes
GH_COMMIT =	ed194c3948c72a72483a417f48b0b02292f58e17

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += LTO c m ncurses pthread readline z

COMPILER =	clang

MODULES =	devel/cmake

# Needed for WANTLIB += LTO
LIB_DEPENDS =	devel/llvm

pre-configure:
	sed -i 's,LINUX TRUE,LINUX FALSE,g' ${WRKSRC}/CMakeLists.txt
	sed -i 's,BUILD_LINUX,BUILD_OSX,g' ${WRKSRC}/include/hobbes/util/os.H
	sed -i 's,(__APPLE__) && defined(__MACH__),(__OpenBSD__),g' \
		${WRKSRC}/include/hobbes/storage.H
	rm -f ${WRKSRC}/include/hobbes/eval/jitcc.H.orig \
		${WRKSRC}/include/hobbes/storage.H.orig \
		${WRKSRC}/include/hobbes/util/llvm.H.orig

.include <bsd.port.mk>
