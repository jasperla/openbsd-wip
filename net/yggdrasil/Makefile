COMMENT =		experimental end-to-end encrypted IPv6 overlay network
CATEGORIES =		net

GH_ACCOUNT =		yggdrasil-network
GH_PROJECT =		yggdrasil-go
GH_TAGNAME =		v0.5.8
MODGO_MODNAME =		github.com/${GH_ACCOUNT}/${GH_PROJECT}
MODGO_VERSION =		${GH_TAGNAME}
PKGNAME =		${DISTNAME:S/-go//}

SITES.gh =		https://${MODGO_MODNAME}/
# merged "Fix link panic when shutting down (closes #1168)"
# merged "tun: bsd: remove redundant ioctl to set MTU (#1172)"
# merged "Fix ioctl(2) code for OpenBSD (#1175)"
# merged "Replace repeated subscripts with single TrimPrefix (#1176)"
FIXES =			e138fa6 98a6fdb ccda107
PATCHFILES.gh =		${FIXES:=${PKGSTEM}-{commit/}%.patch}
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
