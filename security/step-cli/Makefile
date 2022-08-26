COMMENT =	swiss army knife for working with X509, OAuth, JWT, OATH OTP

V =		0.22.0
MODGO_MODNAME =	github.com/smallstep/cli
MODGO_VERSION =	v${V}
DISTNAME =	step-cli-${V}

CATEGORIES =	security

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

MODGO_LDFLAGS +=	-X "main.Version=${V}"

post-build:
	mv ${MODGO_WORKSPACE}/bin/step \
		${MODGO_WORKSPACE}/bin/step-cli

.include "modules.inc"
.include <bsd.port.mk>
