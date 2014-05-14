# $OpenBSD $

COMMENT =		encode, inspect, and decode Opus files
DISTNAME =		opusfile-0.5
CATEGORIES =		audio

SHARED_ONLY =		Yes

SHARED_LIBS +=		opusfile                  0.0 # 3.0
SHARED_LIBS +=		opusurl                   0.0 # 3.0

HOMEPAGE =		http://opus-codec.org/
MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto m ogg opus ssl

MASTER_SITES =		http://downloads.xiph.org/releases/opus/ \
			https://ftp.mozilla.org/pub/mozilla.org/opus/

LIB_DEPENDS =		audio/libogg \
			audio/opus

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-doc

FLAVORS =		debug
FLAVOR ?=

.if ${FLAVOR:Mdebug}
ALL_TARGET =		debug
.endif

NO_TEST =		Yes

.include <bsd.port.mk>
