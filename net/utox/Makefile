# $OpenBSD$

COMMENT =		lightweight graphical Tox client
DISTNAME =		utox-${GH_TAGNAME:v%=%}
CATEGORIES =		net telephony
HOMEPAGE =		http://utox.org/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xext Xrender c filteraudio fontconfig freetype
WANTLIB += m openal opus pthread sodium toxav toxcore toxdns toxencryptsave
WANTLIB += vpx z

GH_ACCOUNT =		GrayHatter
GH_PROJECT =		uTox
GH_TAGNAME =		v0.5.0

LIB_DEPENDS =		audio/openal \
			audio/libfilteraudio \
			net/toxcore

MAKE_FLAGS =		DBUS=0 V4LCONVERT=0 \
			GIT_V=7e2907470835746b6819d631b48dd54bc9c4de66
FAKE_FLAGS =		PREFIX=${TRUEPREFIX} MANDIR=${TRUEPREFIX}/man

USE_GMAKE =		Yes
NO_TEST =		Yes

CFLAGS +=		-I${LOCALBASE}/include -I${X11BASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib -L${X11BASE}/lib

.include <bsd.port.mk>
