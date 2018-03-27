# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	a replacement for gpg which can encrypt/sign/verify

DISTNAME =	opmsg-1.78s
EXTRACT_SUFX =	.tgz
SIG_TYPE =	opmsg
SIG_FILE =	${DISTNAME}.sig

CATEGORIES =	security

HOMEPAGE =	https://github.com/stealth/opmsg

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto m

MASTER_SITES =		http://stealth.openwall.net/opmsg/

MODULES =		lang/clang
MODCLANG_ARCHS =	*
MODCLANG_LANGS =	c++

MAKE_FLAGS =		DEFS+="-DHAVE_BN_GENCB_NEW=0" \
			DEFS+="-DHAVE_LIBRESSL"

WRKSRC =		${WRKDIR}/opmsg/src

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/opmsg ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opmsg
	${INSTALL_DATA} ${WRKSRC}/../sample.config \
		${PREFIX}/share/examples/opmsg/sample.config

.include <bsd.port.mk>
