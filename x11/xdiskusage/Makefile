COMMENT =	graphically display disk usage

V =		1.60
DISTNAME =	xdiskusage-${V}
CATEGORIES =	x11
MAINTAINER =    Chris Billington <emulti@disroot.org>

HOMEPAGE =	https://xdiskusage.sourceforge.net

# GPLv2+ (README)
PERMIT_PACKAGE = Yes

WANTLIB +=	${COMPILER_LIBCXX} X11 Xau Xcursor Xdmcp Xext Xfixes
WANTLIB +=	Xft Xinerama Xrender c fontconfig fltk m

SITES =		https://xdiskusage.sourceforge.net/
EXTRACT_SUFX =	.tgz

LIB_DEPENDS =	x11/fltk

MAKE_FLAGS =	CXXFLAGS="-Wall -O2 `fltk-config --cxxflags`" \
		LDFLAGS="`fltk-config --ldflags`"

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = --mandir=${PREFIX}/man

.include <bsd.port.mk>
