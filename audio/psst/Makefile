# $OpenBSD: $

# miniaudio-rs lacks other bindings
ONLY_FOR_ARCHS =	amd64

COMMENT =		Fast Spotify client with native GUI

# kn@ fork bundling all porting work to avoid in-tree patches and MODCARGO_*
# see "Support OpenBSD" https://github.com/jpochyla/psst/pull/191
V =			0.8.1pl1
DISTNAME =		psst-${V}
MASTER_SITES =		https://github.com/klemensn/psst/releases/download/${V}/
#GH_ACCOUNT =		jpochyla
#GH_PROJECT =		psst
#GH_TAGNAME =		v0.8.1

# XXX why is this needed again? (from semarie, thanks!)
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

CATEGORIES =		audio

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

#WANTLIB =		

MODULES =		devel/cargo

LIB_DEPENDS =		graphics/cairo \
			x11/gtk+3,-main

SEPARATE_BUILD =	Yes
NO_TEST =		Yes

CONFIGURE_STYLE =	cargo

DOCDIR =		${PREFIX}/share/doc/psst

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOCDIR}/

.include "crates.inc"
.include <bsd.port.mk>
