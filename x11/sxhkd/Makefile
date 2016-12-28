# $OpenBSD$

COMMENT =		simple X hotkey daemon
GH_ACCOUNT =		baskerville
GH_PROJECT =		sxhkd
GH_TAGNAME =		0.5.6
CATEGORIES =		x11

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes


USE_GMAKE =		Yes
MAKE_ENV +=		CPPFLAGS="-I${X11BASE}/include" \
			LDFLAGS="-L${X11BASE}/lib"
FAKE_FLAGS =		DESTDIR=
FAKE_ENV =		MANPREFIX=${DESTDIR}${PREFIX}/man

post-install:
	mv ${PREFIX}/share/doc/sxhkd/examples ${PREFIX}/share/examples/sxhkd
	rm -R ${PREFIX}/share/doc/sxhkd

.include <bsd.port.mk>
