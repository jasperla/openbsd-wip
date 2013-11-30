# $OpenBSD $

COMMENT =		

DISTNAME =		util-macros-1.17.1

CATEGORIES =		graphics sysutils
HOMEPAGE =		http://cgit.freedesktop.org/xorg/util/macros

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://cgit.freedesktop.org/xorg/util/macros/snapshot/

BUILD_DEPENDS =         devel/autoconf/${AUTOCONF_VERSION} \
                        devel/automake/${AUTOMAKE_VERSION}

AUTOCONF_VERSION =      2.69
AUTOMAKE_VERSION=       1.9

USE_GMAKE =             Yes

post-patch:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} sh ./autogen.sh

.include <bsd.port.mk>
