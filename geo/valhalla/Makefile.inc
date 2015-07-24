# $OpenBSD: Makefile.inc,v 1.10 2015/03/30 03:01:51 bentley Exp $

CATEGORIES +=	geo

# child ports MUST define VALHALLA_{PROJECT,VERSION}

DISTNAME ?=	valhalla-${VALHALLA_PROJECT}-${VALHALLA_VERSION}

MAINTAINER ?=	Anthony J. Bentley <anthony@cathet.us>

# MIT
PERMIT_PACKAGE_CDROM ?=	Yes

GH_ACCOUNT ?=		valhalla
GH_PROJECT ?=		${VALHALLA_PROJECT}

# autogen.sh[2]: libtoolize: not found
USE_LIBTOOL ?=		gnu
CONFIGURE_STYLE ?=	gnu

AUTOCONF_VERSION ?=	2.69
AUTOMAKE_VERSION ?=	1.15

pre-configure:
	cd ${WRKDIST} && \
	AUTOCONF_VERSION="${AUTOCONF_VERSION}" \
	AUTOMAKE_VERSION="${AUTOMAKE_VERSION}" \
	sh autogen.sh
