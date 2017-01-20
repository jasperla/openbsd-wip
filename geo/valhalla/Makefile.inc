# $OpenBSD: Makefile.inc,v 1.10 2015/03/30 03:01:51 bentley Exp $

CATEGORIES +=		geo

V =			2.0.5
DISTNAME ?=		valhalla-${VALHALLA_PROJECT}-$V

MAINTAINER ?=		Anthony J. Bentley <anthony@anjbe.name>

# MIT
PERMIT_PACKAGE_CDROM ?=	Yes

GH_ACCOUNT ?=		valhalla
GH_PROJECT ?=		${VALHALLA_PROJECT}
GH_TAGNAME ?=		$V

# autogen.sh[2]: libtoolize: not found
USE_LIBTOOL ?=		gnu
CONFIGURE_STYLE ?=	gnu

AUTOCONF_VERSION ?=	2.69
AUTOMAKE_VERSION ?=	1.15

BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

pre-configure:
	cd ${WRKDIST} && \
	AUTOCONF_VERSION="${AUTOCONF_VERSION}" \
	AUTOMAKE_VERSION="${AUTOMAKE_VERSION}" \
	sh autogen.sh
