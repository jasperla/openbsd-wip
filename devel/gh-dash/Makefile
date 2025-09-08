COMMENT =	beautiful CLI dashboard for GitHub

MODGO_MODNAME =	github.com/dlvhdr/gh-dash/v4
MODGO_VERSION =	v4.16.2

DISTNAME =	gh-dash-${MODGO_VERSION:S/v//}

CATEGORIES =	devel

# https://github.com/dlvhdr/gh-dash
HOMEPAGE =	https://dlvhdr.github.io/gh-dash/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE=	Yes

RUN_DEPENDS+=	devel/github-cli

WANTLIB +=	c pthread

MODULES =	lang/go

MODGO_LDFLAGS+=	-X "${MODGO_MODNAME}/cmd.Version=${MODGO_VERSION}"

NO_TEST =	Yes

.include "modules.inc"

.include <bsd.port.mk>
