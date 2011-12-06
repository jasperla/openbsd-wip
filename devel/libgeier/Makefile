# $OpenBSD$

CATEGORIES =		devel
COMMENT =		C library for validating ELSTER data
VERSION =		0.13
DISTNAME =		libgeier-${VERSION}
HOMEPAGE =		http://www.taxbird.de/software/libgeier

SHARED_LIBS =		geier		0.0

MAINTAINER =		Rafael Sadowski <rafael@sizeofvoid.org>

# GPL2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES=		http://taxbird.de/download/libgeier/${VERSION}/

LIB_DEPENDS =		security/xmlsec \
			devel/argp-standalone \
			devel/libtool

USE_GMAKE =	Yes
USE_LIBTOOL =	Yes

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

BUILD_DEPENDS +=	devel/libtool \
			textproc/gtk-doc

AUTOCONF_VERSION =	2.68
AUTOMAKE_VERSION =	1.9
CONFIGURE_STYLE =	autoconf

pre-configure:
	@cd ${WRKSRC} && \
		gtkdocize && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -i

.include <bsd.port.mk>
