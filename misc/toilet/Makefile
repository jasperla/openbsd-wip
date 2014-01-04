# $OpenBSD$

COMMENT =	clone of FIGlet
DISTNAME =	toilet-0.3
CATEGORIES =	misc

HOMEPAGE =	http://caca.zoy.org/wiki/toilet
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# WTFPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c caca

MASTER_SITES =	http://caca.zoy.org/raw-attachment/wiki/toilet/

LIB_DEPENDS =	graphics/libcaca

CONFIGURE_STYLE =	gnu

# For man page generation and the tests.
USE_GMAKE =	Yes
MAKE_FLAGS =	LDFLAGS="-L${X11BASE}/lib"

post-patch:
	perl -pi -e "s,make,${MAKE_PROGRAM},g" ${WRKSRC}/test/check-*

.include <bsd.port.mk>
