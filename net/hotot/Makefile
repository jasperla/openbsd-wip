# $OpenBSD$

COMMENT =	lightweight client for twitter and identi.ca

V =		0.9.8.7
DISTNAME =	hotot-$V
DISTFILES =	${V}
CATEGORIES =	net

HOMEPAGE =	http://hotot.org

MAINTAINER =	Juan Francisco Cantero Hurtado <iam@juanfra.info>

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c m pthread

MASTER_SITES =	https://github.com/shellex/Hotot/tarball/ \
		http://download.tuxfamily.org/jod/net/hotot/

WRKDIST=	${WRKDIR}/shellex-Hotot-44272ff

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
CONFIGURE_ARGS =-DWITH_GIR=on -DWITH_GTK=on -DWITH_QT=off -DWITH_KDE=off \
		-DWITH_CHROME=off -DCMAKE_INSTALL_PREFIX=${PREFIX} \
		-DPYTHON_EXECUTABLE=${MODPY_BIN}

BUILD_DEPENDS =	textproc/intltool

RUN_DEPENDS =	devel/py-gobject3 \
		www/webkit,gtk3 \
		x11/dbus-python

MODULES =	devel/cmake \
		lang/python

NO_REGRESS =	Yes

.include <bsd.port.mk>
