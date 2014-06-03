# $OpenBSD$

GH_VER =	0.2
COMMENT =	library to handle EasyRPG games
DISTNAME =	liblcf-${GH_VER}
DISTFILES =	liblcf-${GH_VER}{${GH_VER}}${EXTRACT_SUFX}
CATEGORIES =	games

SHARED_LIBS +=  lcf                       0.0 # 0.0

HOMEPAGE =	https://easy-rpg.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m stdc++

MASTER_SITES =	https://github.com/EasyRPG/liblcf/archive/

MODULES =	devel/gettext

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_STYLE =	gnu

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.12

pre-configure:
	cd ${WRKSRC} && \
		${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf -i

.include <bsd.port.mk>
