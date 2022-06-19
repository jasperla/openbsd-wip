ONLY_FOR_ARCHS =	amd64

COMMENT =	small C11 compiler
DISTNAME =	chibicc-0.0.0pl20201206
CATEGORIES =	lang

GH_ACCOUNT =	ibara
GH_PROJECT =	chibicc
GH_COMMIT =	b1ec4037dcdc9b984d685ecac3b8007f709ce1bc

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c

BUILD_DEPENDS =	${RUN_DEPENDS}

RUN_DEPENDS =	devel/gas

TEST_DEPENDS =	shells/bash \
		sysutils/ggrep

USE_GMAKE =	Yes
ALL_TARGET =	${GH_PROJECT}
MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS} -Wno-switch"

FAKE_FLAGS =	DESTDIR=

.include <bsd.port.mk>
