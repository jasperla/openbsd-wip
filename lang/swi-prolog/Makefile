# $OpenBSD: Makefile,v 1.66 2016/05/12 01:17:13 naddy Exp $

BROKEN-arm =		undefined reference to `__sync_fetch_and_add_4'
BROKEN-hppa =		undefined reference to __sync_fetch_and_add_4
BROKEN-sparc64 =	infinite loop or aborts during build

COMMENT =		Prolog for the real world

V =			7.5.15
DISTNAME =		swipl-$V
PKGNAME =		swi-prolog-$V
CATEGORIES =		lang

SHARED_LIBS =		swipl	7.0 # XXX check

HOMEPAGE =		http://www.swi-prolog.org/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xext Xft Xinerama Xpm Xt archive c db execinfo
WANTLIB += fontconfig freetype gmp iodbc jpeg m ncursesw ossp-uuid
WANTLIB += pthread readline z

MASTER_SITES =		${HOMEPAGE}download/devel/src/ \
#MASTER_SITES =		${HOMEPAGE}download/stable/src/ \
#			https://distfiles.nl/

MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}/packages/clib \
				${WRKSRC}/packages/jpl \
				${WRKSRC}/packages/xpce/ \
				${WRKSRC}/packages/xpce/src \
				${WRKSRC}/src

# error: trampoline code generation is not allowed without -ftrampolines
#CFLAGS +=		-ftrampolines

# substitute these into build.templ
CFLAGS +=		-I${LOCALBASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib
SUBST_VARS +=		LDFLAGS CFLAGS MAKE_PROGRAM PREFIX

USE_WXNEEDED =		Yes
USE_GMAKE =		Yes

#MAKE_ENV +=		DESTDIR=${WRKINST}
#COMPILER =		gcc-only

BUILD_DEPENDS =		${RUN_DEPENDS}
# build.templ uses bashisms
BUILD_DEPENDS +=	shells/bash
LIB_DEPENDS =		devel/gmp \
			devel/libexecinfo \
			graphics/jpeg \
			devel/uuid \
			databases/db/v4 \
			archivers/libarchive \
			databases/iodbc

FULLARCH =		${MACHINE_ARCH:S/amd64/x86_64/}-openbsd${OSREV}
SUBST_VARS +=		V BOOT FULLARCH

pre-configure:
	${SUBST_CMD} -c ${WRKSRC}/build.templ ${WRKSRC}/build
	${SUBST_CMD} ${WRKSRC}/src/Makefile.in

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/bash -x build --config

do-build:
	cd ${WRKSRC} && ${LOCALBASE}/bin/bash -x build --make

do-install:
	cd ${WRKSRC} && env ${MAKE_ENV} ${LOCALBASE}/bin/bash -x build --install

post-install:
	cd ${PREFIX}/lib && \
		ln -sf swipl-$V/lib/${FULLARCH}/libswipl.so.${LIBswipl_VERSION}
	mv ${PREFIX}/lib/swipl-${V}/doc ${PREFIX}/share/doc/swipl

# A few tests crash or hang. We either patch them away or (if all tests in a
# file are affected) remove the entire test file.
#
# Many of the crashes are due to libbacktrace not working properly with
# SWI-Prolog.
#
# One test fails after removing all hanging tests.
#pre-test:
#	rm -f ${WRKBUILD}/src/Tests/core/test_resource_error.pl \
#		${WRKBUILD}/src/Tests/core/test_cgc.pl \
#		${WRKBUILD}/src/Tests/thread/queue_resource.pl

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mlp64}
BOOT =	boot64
.else
BOOT =	boot32
.endif

.include <bsd.port.mk>
