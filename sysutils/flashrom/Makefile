# $OpenBSD $

COMMENT =		utility for manipulations with flash chips
V=				0.9.6.1
DISTNAME =		flashrom-${V}

EXTRACT_SUFX = 	.tar.bz2

CATEGORIES =		sysutils
HOMEPAGE =			http://flashrom.org

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://download.flashrom.org/releases/

LIB_DEPENDS =		sysutils/pciutils

WANTLIB += c m stdc++

USE_GMAKE =  			Yes

.include <bsd.port.mk>
