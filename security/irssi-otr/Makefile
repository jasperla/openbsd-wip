# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $


COMMENT =		OTR (off the record) encryption support for irssi

GH_VER =	v1.0.0-alpha2
DISTNAME =		irssi-otr-${GH_VER:S/v//}

SHARED_LIBS =		otr 0.0 # v1.0.0-alpha2

CATEGORIES =		security

HOMEPAGE =		https://github.com/cryptodotis/irssi-otr

MAINTAINER =		Florian Stinglmayr <florian@n0la.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread

MASTER_SITES =		${HOMEPAGE}/archive/
DISTFILES =		${DISTNAME}${EXTRACT_SUFX}{${GH_VER}${EXTRACT_SUFX}}

BUILD_DEPENDS =	net/irssi>=0.8.15p5 \
	security/libotr>=4.0.0 \
	security/libgcrypt>=1.2.0 \
	devel/glib2>=2.22.0 \
	devel/autoconf/2.69 \
	devel/automake/1.9

USE_LIBTOOL=		gnu
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-libotr-inc-prefix=/usr/local/include \
	--disable-static

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.9

NO_TEST =		Yes

pre-configure:
	@cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -i

.include <bsd.port.mk>
