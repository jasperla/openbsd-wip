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

WANTLIB += c crypto m

MODULES =		lang/clang
MODCLANG_ARCHS =	*
MODCLANG_LANGS =	c++

WRKSRC =                ${WRKDIR}/${GH_PROJECT}-${GH_TAGNAME}/src

MAKE_FLAGS =		DEFS+="-DHAVE_BN_GENCB_NEW=0" \
			DEFS+="-DHAVE_LIBRESSL"

#BUILD_DEPENDS =	???
#RUN_DEPENDS =		???
#LIB_DEPENDS =		???
#TEST_DEPENDS =		???

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/opmsg ${PREFIX}/bin/


.include <bsd.port.mk>
