# $OpenBSD$

COMMENT =	applied math library
DISTNAME =	libqalculate-${V}
REVISION =	1

SHARED_LIBS =	qalculate		0.0	# 5.0

WANTLIB +=	c cln glib-2.0 gmp m ncurses pcre pthread readline
WANTLIB +=	stdc++ xml2 z

BUILD_DEPENDS =	devel/libtool

LIB_DEPENDS =	devel/cln \
		devel/glib2 \
		textproc/libxml

.include <bsd.port.mk>
