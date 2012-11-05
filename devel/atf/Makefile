# $OpenBSD $

COMMENT =		Automated Testing Framework
DISTNAME =		atf-0.16

SHARED_LIBS += ct                   5.0      # .4.0
CATEGORIES =		misc
HOMEPAGE =		http://code.google.com/p/kyua/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c m stdc++

MASTER_SITES            = http://kyua.googlecode.com/files/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
