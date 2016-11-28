# $OpenBSD$

COMMENT =		vim-like text editor
GH_ACCOUNT =		martanne
GH_PROJECT =		vis
GH_TAGNAME =		v0.2
CATEGORIES =		editors

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# ISC with some BSD-style licenses for several files
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ncursesw termkey ${MODLUA_WANTLIB}

MODULES =		lang/lua
MODLUA_RUNDEP =		No
MODLUA_VERSION =	5.2
LIB_DEPENDS =		devel/libtermkey \
			${MODLUA_LIB_DEPENDS}
RUN_DEPENDS =		devel/lpeg,${MODLUA_FLAVOR}

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--prefix="${PREFIX}" \
			--mandir="${PREFIX}/man"
NO_TEST =		Yes

post-install:
	mv ${PREFIX}/bin/vis ${PREFIX}/bin/vise
	mv ${PREFIX}/bin/vis-clipboard ${PREFIX}/bin/vise-clipboard
	mv ${PREFIX}/bin/vis-open ${PREFIX}/bin/vise-open
	mv ${PREFIX}/man/man1/vis.1 ${PREFIX}/man/man1/vise.1

.include <bsd.port.mk>
