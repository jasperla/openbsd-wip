# $OpenBSD$

CATEGORIES =		productivity
COMMENT =		tax client with German ELSTER compliance
VERSION =		0.18
DISTNAME =		taxbird-${VERSION}
HOMEPAGE =		http://www.taxbird.de/software/taxbird/

MAINTAINER =		Rafael Sadowski <rafael@sizeofvoid.org>

# GPL2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://taxbird.de/download/taxbird/${VERSION}/

LIB_DEPENDS =		devel/libgeier \
			devel/argp-standalone \
			www/gtkhtml3 \
			x11/gtk+2 \
			devel/xulrunner/1.9 \
			security/xmlsec \
			security/nss \
			textproc/libxml++ \
			lang/guile \
			devel/libtool

USE_GMAKE =	Yes
USE_LIBTOOL =	Yes

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

BUILD_DEPENDS +=	devel/libtool \

AUTOCONF_VERSION =	2.68
AUTOMAKE_VERSION =	1.9
CONFIGURE_STYLE = 	autoconf

pre-configure:
	@cd ${WRKSRC} && \
	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	autoreconf -i

.include <bsd.port.mk>
