# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	a replacement for gpg which can encrypt/sign/verify

GH_ACCOUNT =	stealth
GH_PROJECT =	opmsg
GH_TAGNAME =	rel-1.75s

DISTNAME =	${GH_PROJECT}${GH_TAGNAME:S/^rel//:S/s$//}

CATEGORIES =	security

HOMEPAGE =	https://github.com/stealth/opmsg

#MAINTAINER =		???

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

# "make port-lib-depends-check" can help
#WANTLIB =		???

MODULES =		lang/clang
MODCLANG_ARCHS =	*
MODCLANG_LANGS =	c++

WRKSRC =                ${WRKDIR}/${GH_PROJECT}-${GH_TAGNAME}/src

MAKE_FLAGS =		"DEFS=-DHAVE_BN_GENCB_NEW=0"

#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
#LIB_DEPENDS =		???
#TEST_DEPENDS =		???

.include <bsd.port.mk>
