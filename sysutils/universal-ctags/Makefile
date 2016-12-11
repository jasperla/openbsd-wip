# $OpenBSD:

COMMENT =	multilanguage reimplementation of the Unix ctags utility

# commit date YYYYMMDD
VERSION =	20161129
DISTNAME =	universal-ctags-${VERSION}

GH_ACCOUNT =	universal-ctags
GH_PROJECT =	ctags
GH_COMMIT =	6742b034f43af57da7ba478528f2c628389ba16e

CATEGORIES =	sysutils

HOMEPAGE =	https://ctags.io/

MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

WANTLIB += c

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

USE_GMAKE =		Yes
CONFIGURE_STYLE = 	gnu

MAKE_FLAGS =		CC="${CC}" CFLAGS="${CFLAGS}"

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS =	--prefix=${LOCALBASE} \
			--sysconfdir=${PREFIX}/etc

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

pre-configure:
	cd ${WRKSRC} && ${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} ./autogen.sh

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ctags ${PREFIX}/bin/uctags
	${INSTALL_PROGRAM} ${WRKBUILD}/readtags ${PREFIX}/bin/readtags
	${INSTALL_MAN} ${WRKSRC}/ctags.1 ${PREFIX}/man/man1/uctags.1

.include <bsd.port.mk>
