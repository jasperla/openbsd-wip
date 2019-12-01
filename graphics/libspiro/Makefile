# $OpenBSD$

COMMENT =	simplifies the drawing of beautiful curves

V =		20190731
DISTNAME =	libspiro-${V}

SHARED_LIBS +=	spiro	0.0	# 1.0

CATEGORIES =	graphics

HOMEPAGE =	https://github.com/fontforge/libspiro

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=	m

MASTER_SITES =	https://github.com/fontforge/libspiro/releases/download/${V}/

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

.include <bsd.port.mk>
