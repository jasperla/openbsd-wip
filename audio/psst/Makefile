# $OpenBSD: $

# miniaudio-rs lacks other bindings
ONLY_FOR_ARCHS =	amd64

COMMENT =		Fast Spotify client with native GUI

# kn@ fork bundling all porting work to avoid in-tree patches and MODCARGO_*
# see "Support OpenBSD" https://github.com/jpochyla/psst/pull/191
GH_ACCOUNT =		klemensn
#GH_ACCOUNT =		jpochyla
GH_PROJECT =		psst
#GH_TAGNAME =		v0.8.1
GH_COMMIT =		fb7d59141f34af52ca996aefac6d5519f2a70fc2
DISTNAME =		${GH_PROJECT}-20211008

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
