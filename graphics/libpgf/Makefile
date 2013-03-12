# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT =	PGF image format handling library
V =		6.12.24
DISTNAME =	libpgf-$V-src
PKGNAME =	${DISTNAME:C/-src//}
REVISION =	2

SHARED_LIBS =		pgf			0.0

CATEGORIES =		graphics devel
HOMEPAGE =		http://sourceforge.net/projects/libpgf/
MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libpgf/}

BUILD_DEPENDS =		devel/doxygen

# needs libtoolize
USE_LIBTOOL =		Yes
BUILD_DEPENDS +=	devel/libtool

CONFIGURE_STYLE =	gnu autoconf automake
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.9

WRKDIST =		${WRKDIR}/libpgf
SUBST_VARS +=		PKGNAME

post-patch:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		sh autogen.sh

.include <bsd.port.mk>
