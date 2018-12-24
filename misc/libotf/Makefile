# $OpenBSD: Makefile,v 1.00 2018/12/06 15:00:06 ecb Exp $

COMMENT = 		library for handling OpenType Fonts

DISTNAME =		libotf-0.9.16

SHARED_LIBS =		otf	1.0

CATEGORIES = 		misc

HOMEPAGE =		https://www.nongnu.org/m17n/

MAINTAINER =		Eric Brown <brown@fastmail.com>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = c freetype z

MASTER_SITES =		http://download.savannah.gnu.org/releases/m17n/

CONFIGURE_STYLE=        gnu

NO_TEST =		Yes

.include <bsd.port.mk>
