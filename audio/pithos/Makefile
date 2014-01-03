# $OpenBSD$

GH_VER =	0.3.18
COMMENT =	Pandora client for GNOME
DISTNAME =	pithos-${GH_VER}
DISTFILES =	${DISTNAME}{${GH_VER}}${EXTRACT_SUFX}
CATEGORIES =	audio x11

HOMEPAGE =	http://pithos.github.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Despite what the Github page says...
# GPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://github.com/pithos/pithos/archive/

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	audio/py-last \
		devel/desktop-file-utils \
		devel/py-notify \
		multimedia/gstreamer-0.10/plugins-good \
		multimedia/gstreamer-0.10/plugins-bad \
		multimedia/gstreamer-0.10/py-gstreamer \
		x11/dbus-python \
		x11/gtk+2,-guic \
		x11/gtk+3

TEST_DEPENDS =	audio/py-last

post-patch:
	perl -pi -e "s,/usr/s,s,g" ${WRKSRC}/setup.py

.include <bsd.port.mk>
