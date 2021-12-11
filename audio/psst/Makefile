# $OpenBSD: $

COMMENT =		Fast Spotify client with native GUI

# kn@ fork bundling all porting work to avoid in-tree patches and MODCARGO_*
# see "Support OpenBSD" https://github.com/jpochyla/psst/pull/191
GH_ACCOUNT =		klemensn
GH_PROJECT =		psst
GH_TAGNAME =		0.8.1pl2
DISTFILES +=		${GH_DISTFILE}

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
