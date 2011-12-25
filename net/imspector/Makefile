# $OpenBSD$

COMMENT =		IM proxy with monitoring

DISTNAME =		imspector-0.9

CATEGORIES =		net

HOMEPAGE =		http://www.imspector.org

MAINTAINER =		Kirill Bychkov <yason@linklevel.net>

# GPL v2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}/downloads/

WANTLIB =		c m stdc++
MODULES =		converters/libiconv

USE_LIBTOOL = 		Yes
# something should be done with shared-libs
NO_REGRESS =		Yes

.include <bsd.port.mk>
