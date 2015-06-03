# $OpenBSD$

COMMENT =		wraps git in order to extend it with extra features

V =			2.2.1
GH_ACCOUNT =		github
GH_PROJECT =		hub
GH_TAGNAME =		v$V
DISTNAME =		${GH_PROJECT}-$V
CATEGORIES =		devel

HOMEPAGE =		https://hub.github.com

MAINTAINER =		Fabian Raetz <fabian.raetz@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MODULES =		lang/go

BUILD_DEPENDS =		shells/bash
RUN_DEPENDS =		devel/git

MODGO_PKGNAME =		github.com/github/hub
MODGO_TYPE =		bin

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/hub.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
