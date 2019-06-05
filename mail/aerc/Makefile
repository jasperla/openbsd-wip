# $OpenBSD: Makefile,v 1.8 2019/05/04 20:13:37 bket Exp $

COMMENT =	aerc is an email client for your terminal

DISTNAME =	aerc-0.1.1

CATEGORIES =	mail

HOMEPAGE =	https://aerc-mail.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MASTER_SITES =	https://deftly.net/dist/

MODULES =	lang/go lang/python
MODGO_TYPE =	bin

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

NO_TEST =	Yes

BUILD_DEPENDS =	textproc/scdoc
RUN_DEPENDS =	security/dante \
		devel/py-colorama,python3

MAKE_FLAGS =	PREFIX=${PREFIX}

USE_GMAKE =	Yes

do-build:
	cd ${WRKSRC} && ${MAKE_FLAGS} ${MAKE_PROGRAM}

do-install:
	cd ${WRKSRC} && ${MAKE_ENV} MANDIR=${PREFIX}/man \
		${MAKE_PROGRAM} install

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/aerc/filters/*.py

.include <bsd.port.mk>
