# $OpenBSD$

COMMENT = 		simple ADS-B Mode S decoder for RTLSDR devices

DISTNAME =		dump1090-20170109

GH_ACCOUNT =		antirez
GH_PROJECT =		dump1090
GH_COMMIT =		d4be3b8a25765de9f36f2aff697f61f914c65f13

CATEGORIES =		comms

HOMEPAGE = 		https://github.com/antirez/dump1090

MAINTAINER =		Giannis Tsaraias <tsg@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c m pthread rtlsdr usb-1.0

LIB_DEPENDS =		comms/rtl-sdr

USE_GMAKE =		Yes

NO_TEST =		Yes
MAKE_FLAGS =		CC="${CC}"

CFLAGS +=		-I${LOCALBASE}/include

pre-configure:
	sed -i 's,gmap.html,${PREFIX}/share/dump1090/gmap.html,g' \
		${WRKSRC}/dump1090.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dump1090 ${PREFIX}/bin

	${INSTALL_DATA_DIR} ${PREFIX}/share/dump1090
	${INSTALL_DATA} ${WRKSRC}/gmap.html ${PREFIX}/share/dump1090/

	${INSTALL_DATA_DIR} ${PREFIX}/share/dump1090/tools
	${INSTALL_DATA} ${WRKSRC}/tools/debug.html \
		${PREFIX}/share/dump1090/tools/

.include <bsd.port.mk>
