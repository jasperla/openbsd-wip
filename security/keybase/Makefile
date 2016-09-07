# $OpenBSD: Makefile,v 1.10 2016/08/30 21:05:50 edd Exp $

COMMENT =	client for keybase.io

# TODO
# This is ghetto. I am marking upstream code as 1.0.17 because
# the 1.0.17 tag doesn't contain the fixes I upstreamed.
V =		1.0.17
GH_ACCOUNT =	keybase
GH_PROJECT =	client
GH_COMMIT =	3a3d16f88a2d826ab2610be168715027c4f4929c

DISTNAME =	keybase-${V}
PKGNAME =	keybase-${V}

CATEGORIES =	security
HOMEPAGE =	https://keybase.io

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

# The above TODO could be fixed by patching locally but this seems
# to break the patching stuff.
WRKSRC =		${WRKDIR}/go/src/github.com/keybase/client

MODULES =		lang/go
MODGO_TYPE =		bin
MODGO_ENV =		PATH="${PORTPATH}" HOME="${PORTHOME}"

do-build:
	cd ${WRKSRC}/go/keybase && ${MODGO_CMD} build -tags \
		production

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/go/keybase/keybase ${PREFIX}/bin/

.include <bsd.port.mk>
