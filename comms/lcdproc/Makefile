# $OpenBSD: Makefile,v 1.17 2018/09/04 12:46:09 espie Exp $

COMMENT =		interface to various LCD displays

V =			0.5.9
DISTNAME =		lcdproc-$V

CATEGORIES =		comms devel
HOMEPAGE =		http://www.lcdproc.org

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c ftdi hid kvm ncurses pthread usb

LIB_DEPENDS =		devel/libftdi \
			devel/libhid
BUILD_DEPENDS =		textproc/xmlto

USE_GMAKE =		Yes

MASTER_SITES =		https://github.com/lcdproc/lcdproc/releases/download/v$V/

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include ${WITH_APM}" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread" \
			ac_cv_port_have_lpt=no
# xosd driver is busted, working on it upstream
# http://lists.omnipotent.net/pipermail/lcdproc/2011-November/013871.html
CONFIGURE_ARGS =	--enable-drivers=all,!xosd

EXAMPLE_DIR = ${PREFIX}/share/examples/lcdproc
post-install:
	cd ${WRKBUILD} && ${MAKE_PROGRAM} install-html-userguide
	${INSTALL_DATA_DIR} ${EXAMPLE_DIR}
	${SUBST_CMD} -c ${WRKBUILD}/LCDd.conf ${EXAMPLE_DIR}/LCDd.conf
	${SUBST_CMD} -c ${WRKBUILD}/clients/lcdexec/lcdexec.conf \
		${EXAMPLE_DIR}/lcdexec.conf
	${SUBST_CMD} -c ${WRKBUILD}/clients/lcdproc/lcdproc.conf \
		${EXAMPLE_DIR}/lcdproc.conf
	chown -R ${SHAREOWN}:${SHAREGRP} ${EXAMPLE_DIR}
# lcdvc is a linux specific thing - prevent it appearing in PLIST
	rm ${PREFIX}/bin/lcdvc ${PREFIX}/man/man1/lcdvc.1

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mapm}
WITH_APM =	-DWITH_APM
.endif

.include <bsd.port.mk>
