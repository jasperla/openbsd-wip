COMMENT =		experimental end-to-end encrypted IPv6 overlay network
CATEGORIES =		net

GH_ACCOUNT =		yggdrasil-network
GH_PROJECT =		yggdrasil-go
GH_TAGNAME =		v0.5.8
MODGO_MODNAME =		github.com/${GH_ACCOUNT}/${GH_PROJECT}
MODGO_VERSION =		${GH_TAGNAME}
PKGNAME =		${DISTNAME:S/-go//}

HOMEPAGE =		https://yggdrasil-network.github.io/

# LGPLv3
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# uses pledge() and unveil()
WANTLIB =		c pthread

MODULES =		lang/go

_BUILD =		${MODGO_MODNAME}/src/version.build
MODGO_LDFLAGS =		-X ${_BUILD}Name=OpenBSD \
			-X ${_BUILD}Version=${MODGO_VERSION}

.include "modules.inc"

# for pledge;  why are these not picked up by modgo-gen-modules
# after patching go.{mod,sum}?
_PROTECT =		suah.dev/protect	v1.2.4
MODGO_MODULES +=	${_PROTECT}
MODGO_MODFILES +=	${_PROTECT}

# make update-patches work;  does the go module's default need fixing?
WRKDIST =		${WRKSRC}

.include <bsd.port.mk>
