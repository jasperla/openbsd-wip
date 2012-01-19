# $OpenBSD$
COMMENT =		resource constrained project scheduling
CATEGORIES =		productivity
DISTNAME =		librcps-0.3
MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>
HOMEPAGE =		http://www.librcps.org/

SHARED_LIBS =		rcps		0.0

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c pthread

MASTER_SITES =		${HOMEPAGE}

SEPARATE_BUILD =	simple
USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu autoconf
AUTOCONF_VERSION =	2.61

.include <bsd.port.mk>
