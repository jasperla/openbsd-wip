# $OpenBSD $

COMMENT =		program to test a Render extension

DISTNAME =		rendercheck-1.4

CATEGORIES =		graphics sysutils
HOMEPAGE =		http://cgit.freedesktop.org/xorg/app/rendercheck/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes

#WANTLIB += c m stdc++

MASTER_SITES =		http://cgit.freedesktop.org/xorg/app/rendercheck/snapshot/

BUILD_DEPENDS =         devel/autoconf/${AUTOCONF_VERSION} \
                        devel/automake/${AUTOMAKE_VERSION} \
			sysutils/xorg-macros

AUTOCONF_VERSION =      2.69
AUTOMAKE_VERSION=       1.9
#CONFIGURE_STYLE=        autoconf

USE_GMAKE =             Yes

post-patch:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} sh ./autogen.sh

.include <bsd.port.mk>
