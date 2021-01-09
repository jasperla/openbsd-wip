# $OpenBSD$

# Has backends for amd64, arm64, armv7, and i386
# But not all are working on OpenBSD...
ONLY_FOR_ARCHS =	amd64

COMMENT =	tiny C compiler
DISTNAME =	tcc-0.9.27.20210109
CATEGORIES =	lang

GH_ACCOUNT =	TinyCC
GH_PROJECT =	tinycc
GH_COMMIT =	68744e3260d42370c8a9e34f72800d622851e20c

HOMEPAGE =	https://bellard.org/tcc/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += c m pthread

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# --with-selinux allows the use of mmap/mprotect with -run
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--cc="${CC}" \
			--debug \
			--docdir="${LOCALBASE}/share/doc/tcc" \
			--infodir="${LOCALBASE}/info" \
			--mandir="${LOCALBASE}/man" \
			--with-selinux

USE_GMAKE =	Yes

.include <bsd.port.mk>
