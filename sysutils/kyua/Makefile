# $OpenBSD $

COMMENT =		testing framework
DISTNAME =		kyua-cli-0.5

SHARED_LIBS += ct                   5.0      # .4.0
CATEGORIES =		devel sysutils
HOMEPAGE =			http://code.google.com/p/kyua/

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes

# "make port-lib-depends-check" can help
WANTLIB += c m stdc++

MASTER_SITES            = http://kyua.googlecode.com/files/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
