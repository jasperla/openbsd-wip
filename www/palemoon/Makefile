# $OpenBSD$

# Maybe i386 too, but has a hard requirement on SSE2 instructions.
ONLY_FOR_ARCHS =	amd64

V =		27.5.1
COMMENT =	independent fork of Firefox with new layout engine
DISTNAME =	palemoon-${V}
CATEGORIES =	www x11

GH_ACCOUNT =	MoonchildProductions
GH_PROJECT =	Pale-Moon
GH_TAGNAME =	${V}_Release

HOMEPAGE =	https://www.palemoon.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MPL 2.0
PERMIT_PACKAGE_CDROM =	Yes

#WANTLIB += c m

# Hacky and probably ignored.
COMPILER =	ports-gcc

MODULES =	lang/python
 
# XXX: ${MODGNU_AUTOCONF_DEPENDS} && AUTOCONF_VERSION=2.13 didn't work
BUILD_DEPENDS =	archivers/unzip \
		archivers/zip \
		devel/autoconf/2.13 \
		devel/yasm

USE_GMAKE =	Yes

SEPARATE_BUILD =	Yes

# Upstream build instructions say this is necessary.
post-extract:
	${SUBST_CMD} -DWRKBUILD="${WRKBUILD}" -DCFLAGS="${CFLAGS}" \
		-c -m 644 ${FILESDIR}/mozconfig ${WRKSRC}/.mozconfig

do-build:
	cd ${WRKSRC} && ./mach build

.include <bsd.port.mk>
