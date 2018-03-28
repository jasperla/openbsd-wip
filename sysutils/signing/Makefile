# $OpenBSD: Makefile.template,v 1.77 2018/02/09 17:08:33 sthen Exp $

COMMENT =	tool to verify external signatures of ports

V =		1.0.4
DISTNAME =	signing-${V}
CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/qbit/signing

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

# "make port-lib-depends-check" can help
#WANTLIB =		???

MASTER_SITES =		https://github.com/qbit/signing/releases/download/${V}/

RUN_DEPENDS =		security/gnupg2 \
			security/opmsg

NO_BUILD =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/signing
	cp -r ${WRKSRC}/* ${PREFIX}/share/signing/

.include <bsd.port.mk>
