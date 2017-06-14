# $OpenBSD$

COMMENT =		vim-like text editor
GH_ACCOUNT =		martanne
GH_PROJECT =		vis
GH_TAGNAME =		v0.3
CATEGORIES =		editors

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# ISC with some BSD-style licenses for several files
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c iconv intl m ncursesw termkey tre ${MODLUA_WANTLIB}

MODULES =		lang/lua
MODLUA_RUNDEP =		No
MODLUA_VERSION =	5.2
LIB_DEPENDS =		devel/libtermkey \
			textproc/tre \
			${MODLUA_LIB_DEPENDS}
RUN_DEPENDS =		devel/lpeg,${MODLUA_FLAVOR}

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--prefix="${PREFIX}" \
			--mandir="${PREFIX}/man" \
			--disable-default-flags
NO_TEST =		Yes

CFLAGS +=		-ffunction-sections -fdata-sections -fPIE
LDFLAGS +=		-Wl,-z,now -Wl,-z,relro

.include <bsd.port.mk>
