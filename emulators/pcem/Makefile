# $OpenBSD$

COMMENT =	PC/PC-Compatible low-level emulator striving for accuracy
DISTNAME =	${GH_PROJECT}-17
CATEGORIES =	emulators x11

# Upstream doesn't release source tarballs...
GH_ACCOUNT =	sarah-walker-pcem
GH_PROJECT =	pcem
GH_COMMIT =	13f53a25687be71ee3ee8482b1a90b1b0aa64fb6

HOMEPAGE =	https://pcem-emulator.co.uk/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL SDL2 c m openal wx_baseu-3.0
WANTLIB += wx_baseu_net-3.0 wx_baseu_xml-3.0 wx_gtk3u_adv-3.0
WANTLIB += wx_gtk3u_core-3.0 wx_gtk3u_html-3.0 wx_gtk3u_qa-3.0
WANTLIB += wx_gtk3u_xrc-3.0

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS =	audio/openal \
		devel/sdl2 \
		x11/wxWidgets

SEPARATE_BUILD =	yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-networking \
			--enable-release-build
CONFIGURE_ENV =		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include `wx-config --cflags`" \
			LDFLAGS="${LDFLAGS} -L${X11BASE}/lib -L${LOCALBASE}/lib"

USE_GMAKE =	Yes

# Build fails without these
CFLAGS +=	-Doff64_t=off_t -Dfopen64=fopen -Dfseeko64=fseeko -Dftello64=ftello

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

# The configure script as-is is incomplete...
# So we really have to do this
do-gen:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
				autoreconf -fiv

.include <bsd.port.mk>
