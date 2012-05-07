# $OpenBSD$

COMMENT =		GNU version of standard text editor

V =			1.6
DISTNAME =		ed-${V}
PKGNAME =		ged-${V}

CATEGORIES =		editors

HOMEPAGE =		http://www.gnu.org/software/ed/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c

MASTER_SITES =		${MASTER_SITE_GNU:=ed/}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--program-prefix=g \
			CC="${CC}" CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"

.include <bsd.port.mk>
