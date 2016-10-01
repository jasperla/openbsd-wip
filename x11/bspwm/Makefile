# $OpenBSD$

COMMENT =		tiling window manager based on binary space partitioning
GH_ACCOUNT =		baskerville
GH_PROJECT =		bspwm
GH_TAGNAME =		0.9.1
CATEGORIES =		x11

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m xcb xcb-ewmh xcb-icccm xcb-randr xcb-util xcb-xinerama

USE_GMAKE =		Yes
MAKE_ENV +=		CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib"
FAKE_FLAGS =		DESTDIR= \
			MANPREFIX=${DESTDIR}${PREFIX}/man

post-install:
	rm -R ${PREFIX}/share/zsh
	mv ${PREFIX}/share/doc/bspwm/examples ${PREFIX}/share/examples/bspwm

.include <bsd.port.mk>
