# $OpenBSD$

ONLY_FOR_ARCHS =	amd64

COMMENT =	simple, self-hosting C compiler
DISTNAME =	lacc-0.0.0.20180426
CATEGORIES =	lang

GH_ACCOUNT =	larmel
GH_PROJECT =	lacc
GH_COMMIT =	57b660c4a6bd220932b30a037533ea57966b948d

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

USE_GMAKE =	Yes
ALL_TARGET =	bin/release
MAKE_FLAGS =	CC="${CC}" \
		CFLAGS="${CFLAGS} -Wall -pedantic -std=c89 -I include/ -Wno-missing-braces"

FAKE_FLAGS =	INSTALL_PATH="${DESTDIR}${PREFIX}"

pre-configure:
	sed -i 's,-O3,,g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
