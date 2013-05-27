# $OpenBSD$

COMMENT =	lightweight client for twitter and identi.ca

V =		0.9.8.10
DISTNAME =	hotot-$V
CATEGORIES =	net

HOMEPAGE =	http://hotot.org

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m pthread

MASTER_SITES =	http://download.tuxfamily.org/jod/net/hotot/

MODULES =	devel/cmake \
		lang/python

BUILD_DEPENDS =	textproc/intltool

RUN_DEPENDS =	devel/py-gobject3 \
		devel/xdg-utils \
		www/webkit,gtk3 \
		x11/dbus-python

MODPY_VERSION =	2.7

# QT version is buggy and unofficial
CONFIGURE_ARGS =-DWITH_GIR=on -DWITH_GTK=on -DWITH_QT=off -DWITH_KDE=off \
		-DWITH_CHROME=off -DCMAKE_INSTALL_PREFIX=${PREFIX} \
		-DPYTHON_EXECUTABLE=${MODPY_BIN}

NO_TEST =	Yes

WRKDIST=	${WRKDIR}/shellex-Hotot-fc242c7

.include <bsd.port.mk>
