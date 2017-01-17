# $OpenBSD$

COMMENT =		updated version of the sam text editor
DISTNAME =		sam-0.0.20170111
GH_ACCOUNT =		deadpixi
GH_PROJECT =		sam
GH_COMMIT =		71aaff563cdaf41ce7029713cd05a1ed1dad70c4
CATEGORIES =		plan9 editors

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xft Xi Xt c

MAKE_FLAGS =		INCLUDES="${CFLAGS}" \
			LDFLAGS="${LDFLAGS}"
FAKE_FLAGS =		MODE=system \
			DESTDIR="${WRKINST}${PREFIX}" \
			MANDIR="${WRKINST}${PREFIX}/man"
CFLAGS +=		-I${X11BASE}/include -I${X11BASE}/include/freetype2
LDFLAGS +=		-L${X11BASE}/lib

post-patch:
	sed -i 's/ln -sf/ln -f/' ${WRKSRC}/doc/Makefile

.include <bsd.port.mk>
