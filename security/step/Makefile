COMMENT =	swiss army knife for working with X509, OAuth, JWT, OATH OTP

V =		0.19.0
MODGO_VERSION =	v${V}

DISTNAME =	cli-${V}
PKGNAME =	step-${V}

CATEGORIES =	security

MASTER_SITES =	https://deftly.net/dist/

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

MODGO_LDFLAGS +=	-X "main.Version=${V}"

do-build:
	cd ${WRKSRC} && \
		${MODGO_BUILD_CMD:S/GO111MODULE=off/GO111MODULE=on/} ./cmd/...

.include <bsd.port.mk>
