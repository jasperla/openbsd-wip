# $OpenBSD: Makefile.template,v 1.75 2016/03/20 17:19:49 naddy Exp $

COMMENT =	library for parsing/normalizing street addresses

GH_ACCOUNT =	openvenues
GH_PROJECT =	libpostal
GH_TAGNAME =	v1.0.0

SHARED_LIBS +=	postal	0.0	# 1.0

CATEGORIES =	geo

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	m

AUTOMAKE_VERSION = 1.15
AUTOCONF_VERSION = 2.69

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool

RUN_DEPENDS =	net/curl

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS = --disable-data-download

pre-configure:
	cd ${WRKSRC} && ./bootstrap.sh

.include <bsd.port.mk>
