# $OpenBSD $

COMMENT =		Automated Testing Framework
VERSION =		0.18
DISTNAME =		atf-${VERSION}

SHARED_LIBS +=		atf-c++                   0.0 # 0.0
SHARED_LIBS +=		atf-c                     0.0 # 0.0

CATEGORIES =		devel
HOMEPAGE =		https://code.google.com/p/kyua/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c m stdc++

MASTER_SITES =		https://kyua.googlecode.com/files/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
