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

# XXX no idea yet why this is needed.
# with GH_COMMIT instead of a proper release `make extract' would require this
# to be unset but `make modcargo-gen-crates' would require it to be set...
# now both as well as `make modcargo-gen-crates-licenses' work but `make build'
# fails with
#	error: manifest path `/usr/ports/pobj/psst-0.8.1pl1/Cargo.toml` does not exist
# XXX how does the Cargo.toml disappear?
WRKDIST =		${WRKDIR}

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
