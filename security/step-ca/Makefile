COMMENT =	private certificate authority and ACME server

V =		0.22.0
MODGO_MODNAME =	github.com/smallstep/certificates
MODGO_VERSION =	v${V}
DISTNAME =	step-ca-${V}

CATEGORIES =	security

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pcsclite pthread

LIB_DEPENDS =		security/pcsc-lite

MODULES =		lang/go

MODGO_LDFLAGS +=	-X "main.Version=${V}"

.include "modules.inc"
.include <bsd.port.mk>
