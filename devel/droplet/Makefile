# $OpenBSD$

SHARED_ONLY=		Yes

CATEGORIES=		devel
COMMENT=		high perfomance Cloud Storage client library	

VERSION=		1.1
DISTNAME=		droplet-${VERSION}
HOMEPAGE=		https://github.com/scality/Droplet

SHARED_LIBS=		droplet		0.0 #0.0

MAINTAINER=		Rafael Sadowski <rafael@sizeofvoid.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ssl json xml2 pthread crypto z iconv m c

MASTER_SITES=		http://www.sizeofvoid.org/pub/OpenBSD/distfiles/

WRKSRC=			${WRKDIR}/scality-Droplet-e6692cc
WRKDIST=		${WRKSRC}
MODULES=		devel/gettext
BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/json-c

LIB_DEPENDS=		textproc/libxml \
			devel/json-c

USE_LIBTOOL=		Yes
AUTOCONF_VERSION= 	2.68
AUTOMAKE_VERSION=	1.11
CONFIGURE_STYLE=	autoconf automake gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
post-patch:
	@cd ${WRKBUILD} && env AUTOCONF_VERSION=2.68 AUTOMAKE_VERSION=1.11 \
		./autogen.sh

.include <bsd.port.mk>
