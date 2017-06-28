# $OpenBSD$

# All they seem to support.
ONLY_FOR_ARCHS =	amd64 i386

V =		1.05.0
COMMENT =	open-source, multi-platform BASIC compiler
DISTNAME =	FreeBASIC-${V}-source-openbsd
PKGNAME =	freebasic-${V}
CATEGORIES =	lang

HOMEPAGE =	https://www.freebasic.net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ncurses pthread

# Can't use upstream, no OpenBSD bootstrap.
MASTER_SITES =	https://devio.us/~bcallah/source/

# The runtime library uses libffi, in building and running.
# And your BASIC programs will be linked against it.
BUILD_DEPENDS =	${RUN_DEPENDS}

RUN_DEPENDS =	devel/libffi

USE_GMAKE =	Yes
MAKE_FILE =	makefile
ALL_TARGET =	bootstrap
MAKE_FLAGS =	V=1 CC="${CC}" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include"

FAKE_FLAGS =	prefix="${DESTDIR}${PREFIX}"

NO_TEST =	Yes

.if (${MACHINE_ARCH} == "amd64")
A = x86_64
.else
A = x86
.endif

SUBST_VARS +=	A

pre-configure:
	sed -i 's,$${TRUEPREFIX},${TRUEPREFIX},g' \
		${WRKSRC}/bootstrap/openbsd-${A}/fbc.c
	grep -Rl '__FB_LINUX__' ${WRKSRC}/inc |\
		xargs sed -i 's,__FB_LINUX__,__FB_OPENBSD__,g'

.include <bsd.port.mk>
