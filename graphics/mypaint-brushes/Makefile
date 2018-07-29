# $OpenBSD$

COMMENT =	brushes used by software using libmypaint

VER =		1.3.0
NAME =		mypaint-brushes
DISTNAME =	${NAME}-${VER}

CATEGORIES =	graphics

HOMEPAGE =	https://github.com/Jehan/mypaint-brushes

MAINTAINER =	Elias M. Mariani <marianielias@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM = Yes

MASTER_SITES =		https://github.com/Jehan/${NAME}/archive/v${VER}/

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

CONFIGURE_STYLE =	gnu
USE_GMAKE =		Yes

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

RUN_DEPENDS =		graphics/libmypaint

pre-configure:
	cd ${WRKSRC} && \
		env \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		./autogen.sh

.include <bsd.port.mk>
