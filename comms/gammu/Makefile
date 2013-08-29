# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT =		Gnu All Mobile Management Utilities

DISTNAME =		gammu-1.32.0

SHARED_LIBS += 		Gammu 0.0 # 7.1
SHARED_LIBS += 		gsmsd 0.0 # 7.1

CATEGORIES =		comms

HOMEPAGE =		http://wammu.eu/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c curl glib-2.0 gobject-2.0 m pthread usb-1.0 ${MODPY_WANTLIB}

MASTER_SITES =		http://dl.cihar.com/gammu/releases/

MODULES =		devel/cmake \
			devel/gettext \
			lang/python

RUN_DEPENDS =		misc/dialog
LIB_DEPENDS =		devel/glib2 \
			devel/libusb1 \
			net/curl

USE_LIBTOOL =		Yes
CONFIGURE_ARGS +=	-DINSTALL_MAN_DIR:STRING=man \
			-DINSTALL_BASH_COMPLETION=OFF \
			-DCMAKE_EXE_LINKER_FLAGS="-L${LOCALBASE}/lib -liconv -lintl"

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/python${MODPY_VERSION}/site-packages/gammu	

.include <bsd.port.mk>
