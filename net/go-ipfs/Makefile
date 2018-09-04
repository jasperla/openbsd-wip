# $OpenBSD$

COMMENT =	global, versioned, peer-to-peer filesystem

V =		0.4.17
DISTNAME =	go-ipfs-source
PKGNAME =	go-ipfs-$V


CATEGORIES =	net

HOMEPAGE =	https://ipfs.io

MAINTAINER =		Fabian Raetz <fabian.raetz@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM = Yes

WANTLIB =		c pthread

MASTER_SITES =		https://github.com/ipfs/go-ipfs/releases/download/v$V/

MODULES =		lang/go

ALL_TARGET =		github.com/ipfs/go-ipfs

SUBST_VARS =		VARBASE

EXTRACT_ONLY =

post-extract:
	mkdir -p ${WRKDIST}
	tar xzf "${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}" -C ${WRKDIST}

do-build:
	${MODGO_BUILD_CMD} -tags nofuse ${ALL_TARGET}/cmd/ipfs

.include <bsd.port.mk>
