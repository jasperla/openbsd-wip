# $OpenBSD$

COMMENT =		chroot for dynamically linked applications
DISTNAME =		chroot_safe-1.4
EXTRACT_SUFX =		.tgz
CATEGORIES =		security

HOMEPAGE =		http://chrootsafe.sourceforge.net

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		m stdc++

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=chrootsafe/}

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu dest
SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
