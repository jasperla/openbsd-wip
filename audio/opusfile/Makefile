# $OpenBSD $

COMMENT =		encode, inspect, and decode Opus files

DISTNAME =		opusfile-0.5

SHARED_LIBS +=		opusfile                  0.0 # 3.0
SHARED_LIBS +=		opusurl                   0.0 # 3.0

CATEGORIES =		audio

HOMEPAGE =		http://opus-codec.org/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m ogg opus crypto ssl

MASTER_SITES =		http://downloads.xiph.org/releases/opus/ \
			https://ftp.mozilla.org/pub/mozilla.org/opus/

LIB_DEPENDS =		audio/libogg audio/opus

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	automake
CONFIGURE_ARGS =	--disable-doc

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.11

FLAVORS =		debug
FLAVOR ?=

.if ${FLAVOR:Mdebug}
ALL_TARGET =		debug
.endif

NO_TEST =		Yes

.include <bsd.port.mk>
