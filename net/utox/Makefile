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

GH_ACCOUNT =		notsecure
GH_PROJECT =		uTox
GH_TAGNAME =		v0.3.2

LIB_DEPENDS =		audio/openal \
			audio/libfilteraudio \
			net/toxcore

MAKE_FLAGS =		DBUS=0 V4LCONVERT=0 \
			GIT_V=d16f53912b161893431fd16025af94d4d8a14f53
FAKE_FLAGS =		PREFIX=${TRUEPREFIX} MANDIR=${TRUEPREFIX}/man

USE_GMAKE =		Yes
NO_TEST =		Yes

CFLAGS +=		-I${LOCALBASE}/include -I${X11BASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib -L${X11BASE}/lib

.include <bsd.port.mk>
