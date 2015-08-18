# $OpenBSD: Makefile,v 1.9 2015/04/21 18:51:24 sthen Exp $

SHARED_ONLY=		Yes
BROKEN-hppa=		no atomic ops in json-c
BROKEN-mips64=		no atomic ops in json-c

CATEGORIES=		devel
COMMENT=		high performance Cloud Storage client library

VERSION=		2.0
DISTNAME=		droplet-${VERSION}
GH_ACCOUNT =		scality
GH_PROJECT =		Droplet
GH_COMMIT =		22e7e46214a26c36a2314ef0c23ee42c861ec6bd

SHARED_LIBS=		droplet		1.0 #0.0

MAINTAINER=		Rafael Sadowski <rafael@sizeofvoid.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto json-c lzma m pthread ssl xml2 z iconv

MODULES=		converters/libiconv
BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

LIB_DEPENDS=		textproc/libxml \
			devel/json-c

AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.11
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
pre-configure:
	cd ${WRKBUILD} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>
