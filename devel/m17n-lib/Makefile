# $OpenBSD: Makefile,v 1.00 2018/12/06 15:00:06 ecb Exp $

COMMENT = 		multilingual text processing library - library
V = 1.8.0
DISTNAME =		m17n-lib-${V}

#SHARED_LIBS =		otf	1.0

CATEGORIES = 		misc

HOMEPAGE =		https://www.nongnu.org/m17n/

MAINTAINER =		Eric Brown <brown@fastmail.com>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	 	freetype
RUN_DEPENDS +=	misc/m17n-db=${V}

MASTER_SITES =		http://download.savannah.gnu.org/releases/m17n/

USE_GMAKE =		Yes
CONFIGURE_STYLE=        gnu

NO_TEST =		Yes

.include <bsd.port.mk>
