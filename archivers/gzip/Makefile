COMMENT =		GNU versions of gzip utilities
CATEGORIES =		archivers
DISTNAME =		gzip-1.13
PKGNAME =		g${DISTNAME}

HOMEPAGE =		https://www.gnu.org/software/gzip/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =		c

SITES =			${SITE_GNU:=gzip/}
EXTRACT_SUFX =		.tar.xz

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--program-prefix=g

SEPARATE_BUILD =	Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

TEST_DEPENDS =		textproc/groff

.include <bsd.port.mk>
