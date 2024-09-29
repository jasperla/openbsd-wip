# hardcoded ioctl in src/tun/tun_bsd.go, fix Go proper or use cgo
ONLY_FOR_ARCHS =	amd64

COMMENT =		experimental end-to-end encrypted IPv6 overlay network
CATEGORIES =		net

GH_ACCOUNT =		yggdrasil-network
GH_PROJECT =		yggdrasil-go
GH_TAGNAME =		v0.5.8
MODGO_MODNAME =		github.com/${GH_ACCOUNT}/${GH_PROJECT}
MODGO_VERSION =		${GH_TAGNAME}
PKGNAME =		${DISTNAME:S/-go//}

SITES.fix =		https://${MODGO_MODNAME}/
# merged "Fix link panic when shutting down (closes #1168)"
PATCHFILES.fix =	${PKGSTEM}-{commit/}e138fa679c8bf32e02f07cc0c3bba5a2dd5e9e9c.patch
# merged "tun: bsd: remove redundant ioctl to set MTU"
PATCHFILES.fix +=	${PKGSTEM}-{pull/}1172.patch
# pending "Fix ioctl(2) code for OpenBSD"
PATCHFILES.fix +=	${PKGSTEM}-{pull/}1175.patch
PATCH_DIST_STRIP =	-p1

HOMEPAGE =		https://yggdrasil-network.github.io/

# LGPLv3
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# uses pledge() and unveil()
WANTLIB =		c pthread

MODULES =		lang/go

_BUILD =		${MODGO_MODNAME}/src/version.build
# buildName appears in -version output and as syslogd(8) tag
MODGO_LDFLAGS =		-X ${_BUILD}Name=${PKGSTEM} \
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
