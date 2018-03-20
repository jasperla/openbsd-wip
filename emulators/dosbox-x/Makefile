# $OpenBSD: Makefile.template,v 1.77 2018/02/09 17:08:33 sthen Exp $

COMMENT =	fork of the DOSBox project

DISTNAME =	dosbox-x-windows-20180316

GH_ACCOUNT =	joncampbell123
GH_PROJECT =	dosbox-x
GH_TAGNAME =	dosbox-x-windows-20180316-2157

CATEGORIES =	emulators

MAINTAINER =	Thomas Frohwein <frohwein@ymail.com>

#GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 c m pcap z SDL2 png

#MODULES =		???
BUILD_DEPENDS=          ${MODGNU_AUTOCONF_DEPENDS} \
                        ${MODGNU_AUTOMAKE_DEPENDS}
#RUN_DEPENDS =		???
LIB_DEPENDS =		devel/sdl2 \
			graphics/png

SEPARATE_BUILD =	Yes

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-sdl2=yes \
			--disable-dynamic-core

# probably needs CONFIGURE_ARGS += --disable-dynamic-core

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

post-patch:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>
