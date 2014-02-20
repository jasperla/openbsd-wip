# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $


COMMENT =		OTR (off the record) encryption support for irssi

GH_VER =	v1.0.0
DISTNAME =		irssi-otr-${GH_VER:S/v//}

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
		security/libgcrypt \
		devel/glib2 \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS = devel/glib security/gcrypt iconv intl otr

CONFIGURE_STYLE =	gnu
LIBTOOL_FLAGS +=	--tag=disable-static
CONFIGURE_ARGS +=	--with-libotr-inc-prefix=${LOCALBASE}/include

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.9

NO_TEST =		Yes
SHARED_ONLY =	Yes

pre-configure:
	@cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -i

.include <bsd.port.mk>
