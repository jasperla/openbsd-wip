# $OpenBSD $

COMMENT =	encode, inspect, and decode Opus files

DISTNAME =	opusfile-0.5
CATEGORIES =	audio

HOMEPAGE =	http://opus-codec.org/

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://downloads.xiph.org/releases/opus/ \
		https://ftp.mozilla.org/pub/mozilla.org/opus/

SHARED_LIBS +=  opusfile                  0.0 # 3.0
SHARED_LIBS +=  opusurl                   0.0 # 3.0

BUILD_DEPENDS =	devel/libtool
#LIB_DEPENDS =	audio/flac audio/libogg audio/opus
#WANTLIB =	FLAC c m ogg opus sndio

USE_GMAKE=	Yes
#SEPARATE_BUILD =	Yes
#CONFIGURE_STYLE =	automake
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-http

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.13

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} libtoolize --force --copy
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} aclocal --force
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoheader -f
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} automake --add-missing
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoconf -f

.include <bsd.port.mk>
