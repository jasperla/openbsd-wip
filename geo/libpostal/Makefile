# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	library for parsing/normalizing street addresses

GH_ACCOUNT =	openvenues
GH_PROJECT =	libpostal
GH_TAGNAME =	v0.3

SHARED_LIBS +=	postal	0.0	# 0.0

CATEGORIES =	geo

MAINTAINER =	Frederic Cambus <fred@statdns.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	snappy

BUILD_DEPENDS = ${MODGNU_AUTOCONF_DEPENDS} \
                ${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS =	archivers/snappy

CONFIGURE_STYLE = gnu

pre-configure:
	cd ${WRKSRC} && ./bootstrap.sh

.include <bsd.port.mk>
