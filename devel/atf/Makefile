# $OpenBSD $

COMMENT =		Automated Testing Framework
DISTNAME =		atf-0.17

SHARED_LIBS += ct                   5.0      # .4.0
SHARED_LIBS +=  atf-c++                   0.0 # 0.0
SHARED_LIBS +=  atf-c                     0.0 # 0.0


CATEGORIES =		misc
HOMEPAGE =			http://code.google.com/p/kyua/

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes

# "make port-lib-depends-check" can help
WANTLIB += c m stdc++

MASTER_SITES            = http://kyua.googlecode.com/files/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
