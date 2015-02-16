# $OpenBSD$

COMMENT =		wraps git in order to extend it with extra features
V =			2.2.0
DISTNAME =		hub-$V
CATEGORIES =		devel

HOMEPAGE =		https://hub.github.com

MAINTAINER =		Fabian Raetz <fabian.raetz@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

GH_ACCOUNT =		github
GH_PROJECT =		hub
GH_TAGNAME =		v$V

BUILD_DEPENDS =		lang/go \
			shells/bash
RUN_DEPENDS =		devel/git

do-build:
	cd ${WRKSRC} && script/build

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hub ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/hub.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
