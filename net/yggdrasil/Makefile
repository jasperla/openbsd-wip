COMMENT =		experimental end-to-end encrypted IPv6 overlay network
CATEGORIES =		net

GH_ACCOUNT =		yggdrasil-network
GH_PROJECT =		yggdrasil-go
GH_TAGNAME =		v0.5.8
MODGO_MODNAME =		github.com/${GH_ACCOUNT}/${GH_PROJECT}
MODGO_VERSION =		${GH_TAGNAME}

# make update-patches work
WRKDIST =		${WRKDIR}/${MODGO_MODNAME}@${MODGO_VERSION}

HOMEPAGE =		https://yggdrasil-network.github.io/

# LGPLv3
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# uses pledge()
WANTLIB =		c pthread

MODULES =		lang/go

_BUILD =		${MODGO_MODNAME}/src/version.build
MODGO_LDFLAGS =		-X ${_BUILD}Name=OpenBSD \
			-X ${_BUILD}Version=${MODGO_VERSION}

.include "modules.inc"
.include <bsd.port.mk>
