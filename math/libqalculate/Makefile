# $OpenBSD$

VMEM_WARNING =	Yes
COMMENT =	applied math library
CATEGORIES =	math devel
DISTNAME =	libqalculate-0.9.7
REVISION =	4
HOMEPAGE =	http://qalculate.sourceforge.net/

SHARED_LIBS =	qalculate		0.0	# 5.0

# GPLv2+
PERMIT_PACKAGE_CDROM = Yes

WANTLIB =	c cln glib-2.0 gmp m ncurses pcre pthread readline
WANTLIB +=	stdc++ xml2 z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=qalculate/}

MODULES =	devel/gettext

BUILD_DEPENDS =	textproc/p5-XML-Parser

LIB_DEPENDS =	devel/cln \
		devel/glib2 \
		textproc/libxml

# Have to use a lot of crap to make fake stage actually working,
# otherwise shell globs in docs/reference/Makefile is not
# expanded.
USE_LIBTOOL =		gnu
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu autoconf automake
CONFIGURE_ARGS =	${CONFIGURE_SHARED}
COPTS +=		-I${WRKSRC} -I${LOCALBASE}/include \
			-L${LOCALBASE}/lib
AUTOCONF_VERSION =	2.67
AUTOMAKE_VERSION =	1.11

SUBST_VARS +=		DISTNAME

# This, and overriding AUTOMAKE_VERSION is needed beacuse
# Makefile.in in docs/reference/ is broken otherwise.
# Adapted from audio/xmms port
post-patch:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake

.include <bsd.port.mk>
