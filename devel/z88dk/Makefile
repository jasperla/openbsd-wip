# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	cross C/ASM toolchain for Z80 systems

V =		20170429
DISTNAME =	z88dk-${V}

GH_ACCOUNT =	z88dk
GH_PROJECT =	z88dk
GH_COMMIT =	040dfaa3cf23a249fc2562affc4d921bcc54bdb7

CATEGORIES =	devel
HOMEPAGE =	https://www.z88dk.org/
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# XXX Artistic + ?
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

USE_GMAKE =		Yes
FAKE_FLAGS =		INSTALL=install

do-build:
	cd ${WRKSRC} && ${MAKE_ENV} /bin/sh build.sh

TEST_ENV +=	ZCCCFG=${WRKSRC}/lib/config/ PATH=${WRKSRC}/bin:${PATH}

.include <bsd.port.mk>
