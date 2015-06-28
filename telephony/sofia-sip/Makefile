# $OpenBSD$

COMMENT =		open-source SIP user agent library
DISTNAME =		sofia-sip-1.12.11
CATEGORIES =		telephony net multimedia
HOMEPAGE =		http://sofia-sip.sourceforge.net
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# LGPLv2 with some ISC and 3-clause BSD bits
PERMIT_PACKAGE_CDROM =	Yes

SHARED_LIBS +=  sofia-sip-ua-glib         0.0 # 3.0
SHARED_LIBS +=  sofia-sip-ua              0.0 # 6.0

WANTLIB += c crypto glib-2.0 pcre pthread ssl

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=sofia-sip/}

MODULES =		converters/libiconv \
			devel/gettext
BUILD_DEPENDS =		devel/check
LIB_DEPENDS =		devel/glib2

MAKE_FLAGS =		SOFIA_SILENT=

SEPARATE_BUILD =	Yes
#USE_LIBTOOL=		gnu
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-dependency-tracking

CFLAGS +=		-I${LOCALBASE}/include
LDFLAGS =		-L${LOCALBASE}/lib

.include <bsd.port.mk>
