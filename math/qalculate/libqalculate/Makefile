# $OpenBSD$

COMMENT =	applied math library
DISTNAME =	libqalculate-${V}
REVISION =	0

SHARED_LIBS =	qalculate		0.0	# 5.0

WANTLIB +=	c cln glib-2.0 gmp m ncurses pcre pthread readline
WANTLIB +=	stdc++ xml2 z

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.67
AUTOMAKE_VERSION =	1.11

LIB_DEPENDS =	devel/cln \
		devel/glib2 \
		textproc/libxml

.include <bsd.port.mk>
