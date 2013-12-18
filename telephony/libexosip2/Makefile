# $OpenBSD$

COMMENT =		high-level SIP library
DISTNAME =		libeXosip2-3.6.0
CATEGORIES =		telephony net devel
HOMEPAGE =		http://savannah.nongnu.org/projects/exosip

SHARED_LIBS =		eXosip2		0.0

# GPLv2+, some parts are BSD 2-clause
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c cares crypto osip2 osipparser2 pthread ssl

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=exosip/}

LIB_DEPENDS =		net/libcares \
			telephony/libosip2>=3.6

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu autoconf
CONFIGURE_ARGS =	${CONFIGURE_SHARED}
CONFIGURE_ENV =		CFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib
AUTOCONF_VERSION =	2.67

.include <bsd.port.mk>
