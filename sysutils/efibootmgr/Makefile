# requires /dev/efi
ONLY_FOR_ARCHS =	amd64 arm64

COMMENT =		EFI Boot Manager utility
DIST_TUPLE =		github	rhboot	efibootmgr	18	.
CATEGORIES =		sysutils

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

WANTLIB =		c efiboot efivar

BUILD_DEPENDS =		devel/popt

LIB_DEPENDS =		sysutils/efivar

# GPLv2
PERMIT_PACKAGE =	Yes

USE_GMAKE =		Yes

CFLAGS +=		-I/usr/local/include
LDFLAGS +=		-L/usr/local/lib

# defaults to "gcc"
MAKE_FLAGS =		CC=${CC} \
			LDFLAGS=${LDFLAGS:Q}

# unused/will not work, but must be set to build
MAKE_FLAGS +=		EFIDIR=/nonexistent

FAKE_FLAGS =		sbindir=usr/local/sbin \
			mandir=usr/local/man

.include <bsd.port.mk>
