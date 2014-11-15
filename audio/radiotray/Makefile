# $OpenBSD$

COMMENT =			radio streaming player
VERSION =			0.7.3
DISTNAME =			radiotray-${VERSION}
CATEGORIES =		audio 
HOMEPAGE =			http://radiotray.sourceforge.net/

MAINTAINER =		<ports@openbsd.org>

# GPLv1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=radiotray/}
MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-gobject${MODPY_FLAVOR} \
		devel/py-notify${MODPY_FLAVOR} \
		multimedia/gstreamer-0.10/plugins-base \
		multimedia/gstreamer-0.10/plugins-good \
		multimedia/gstreamer-0.10/plugins-bad \
		multimedia/gstreamer-0.10/plugins-ugly \
		multimedia/gstreamer-0.10/plugins-ffmpeg \
		multimedia/gstreamer-0.10/py-gstreamer \
		textproc/py-lxml \
		x11/dbus-python

NO_TEST =		Yes

.include <bsd.port.mk>
