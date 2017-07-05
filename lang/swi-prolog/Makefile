# $OpenBSD: Makefile,v 1.66 2016/05/12 01:17:13 naddy Exp $

BROKEN-arm =		undefined reference to `__sync_fetch_and_add_4'
BROKEN-hppa =		undefined reference to __sync_fetch_and_add_4
BROKEN-sparc64 =	infinite loop or aborts during build

COMMENT =		Prolog for the real world

V =			7.4.2
DISTNAME =		swipl-$V
PKGNAME =		swi-prolog-$V
CATEGORIES =		lang

SHARED_LIBS =		pl	6.0

HOMEPAGE =		http://www.swi-prolog.org/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xext Xft Xinerama Xpm Xt archive c db execinfo
WANTLIB += fontconfig freetype gmp iodbc jpeg m ncursesw ossp-uuid
WANTLIB += pthread readline z

MASTER_SITES =		${HOMEPAGE}download/stable/src/ \
			https://distfiles.nl/

CONFIGURE_STYLE =		gnu
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}/packages/clib \
				${WRKSRC}/packages/jpl \
				${WRKSRC}/packages/xpce/ \
				${WRKSRC}/packages/xpce/src \
				${WRKSRC}/src

# error: trampoline code generation is not allowed without -ftrampolines
CFLAGS +=		-ftrampolines

USE_WXNEEDED =		Yes

CONFIGURE_ENV +=	CIFLAGS=' -I${LOCALBASE}/include' \
			LDFLAGS=' -L${LOCALBASE}/lib' \
			COFLAGS='${CFLAGS}'

CONFIGURE_ARGS =	--enable-mt \
			--disable-custom-flags \
			--with-world \
			--enable-shared

# LibreSSL missing CRYPTO_ONCE API
# https://github.com/SWI-Prolog/swipl-devel/issues/249
CONFIGURE_ARGS +=	--without-ssl

USE_GMAKE =		Yes

# Don't pick up bash
MAKE_ENV =		MAKESHELL=/bin/sh

MAKE_ENV +=		LDFLAGS=-L${LOCALBASE}/lib

MAKE_FLAGS =		SONAMEOPT= \
			SHAREDV=libpl.so.${LIBpl_VERSION}

MODULES =		gcc4
# for atomic builtins
MODGCC4_ARCHS =		arm

BUILD_DEPENDS =		${RUN_DEPENDS}
LIB_DEPENDS =		devel/gmp \
			devel/libexecinfo \
			graphics/jpeg \
			devel/uuid \
			databases/db/v4 \
			archivers/libarchive \
			databases/iodbc \
			devel/readline

FULLARCH =		${MACHINE_ARCH:S/amd64/x86_64/}-openbsd${OSREV}
SUBST_VARS +=		V BOOT FULLARCH

post-install:
	cd ${PREFIX}/lib && \
		ln -sf swipl-$V/lib/${FULLARCH}/libpl.so.${LIBpl_VERSION}
	mv ${PREFIX}/lib/swipl-${V}/doc ${PREFIX}/share/doc/swipl

# XXX needed?
TEST_ENV +=		LD_LIBRARY_PATH=${LOCALBASE}/lib

# Swipl multithreading flaky at best on OpenBSD.
# We are not sure if this is our threading implementation or their code.
# The following tests fail (hang). We remove them to allow the rest
# of the tests to execute atleast.
# When updating, uncomment these to see if they still fail.
pre-test:
	rm -f ${WRKBUILD}/src/Tests/core/test_resource_error.pl

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mlp64}
BOOT =	boot64
.else
BOOT =	boot32
.endif

.include <bsd.port.mk>
