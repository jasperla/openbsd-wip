# $OpenBSD: Makefile.template,v 1.77 2018/02/09 17:08:33 sthen Exp $

USE_WXNEEDED =	Yes

COMMENT =	fork of the DOSBox project

V =		0.82.20
PKGNAME =	dosbox-x-${V}
GH_ACCOUNT =	joncampbell123
GH_PROJECT =	dosbox-x
GH_TAGNAME =	dosbox-x-v${V}

CATEGORIES =	emulators
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

#GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL X11 Xrandr c m pcap z SDL SDL_net png xkbfile

# C++11
COMPILER =		base-clang ports-gcc
BUILD_DEPENDS=          ${MODGNU_AUTOCONF_DEPENDS} \
                        ${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool
LIB_DEPENDS =		devel/sdl \
			devel/sdl-net \
			graphics/png

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

# remove a .orig file that messes with ports patches
post-extract:
	rm ${WRKSRC}/mappings/CP437.TXT.orig

do-gen:
	cd ${WRKSRC}; ${AUTOCONF_ENV} ./autogen.sh

.include <bsd.port.mk>
