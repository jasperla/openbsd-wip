# $OpenBSD: Makefile,v 1.8 2019/05/04 20:13:37 bket Exp $

COMMENT =	aerc is an email client for your terminal

DISTNAME =	aerc-0.5.2

CATEGORIES =	mail

HOMEPAGE =	https://aerc-mail.org/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MASTER_SITES =	https://deftly.net/dist/

MODULES =	lang/go \
		lang/python

MODGO_TYPE =	bin
MODGO_FLAGS +=	-mod=vendor

BUILD_DEPENDS =	textproc/scdoc
RUN_DEPENDS =	devel/py-colorama${MODPY_FLAVOR} \
		security/dante \
		www/w3m

MAKE_ENV =	GOFLAGS=${MODGO_FLAGS:Q} \
		CGO_CFLAGS=-I${LOCALBASE}/include
FAKE_ENV =	MANDIR=${PREFIX}/man

USE_GMAKE =	Yes
NO_TEST =	Yes

do-build:
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -C${WRKSRC} ${MAKE_FLAGS} ${ALL_TARGET}

do-install:
	${SETENV} ${FAKE_ENV} ${MAKE_PROGRAM} -C${WRKSRC} ${FAKE_FLAGS} ${FAKE_TARGET}
	${MODPY_BIN} -m compileall ${PREFIX}/share/aerc/filters/*.py

.include <bsd.port.mk>
