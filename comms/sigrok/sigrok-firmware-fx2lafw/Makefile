# $OpenBSD: Makefile.template,v 1.65 2013/03/21 08:46:31 ajacoutot Exp $

COMMENT =		firmware for FX2 logic analyzers

SIGROK_PROJECT =        sigrok-firmware-fx2lafw-bin
SIGROK_VERSION =        0.1.3

PKGNAME =		sigrok-firmware-fx2lafw-${SIGROK_VERSION}
MASTER_SITES =		http://sigrok.org/download/binary/sigrok-firmware-fx2lafw/

CONFIGURE_STYLE =
NO_BUILD =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/sigrok-firmware
	${INSTALL_DATA} ${WRKSRC}/*.fw ${PREFIX}/share/sigrok-firmware

.include <bsd.port.mk>
