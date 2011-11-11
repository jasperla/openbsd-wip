# $OpenBSD$

COMMENT =		event logging framework
V =			0.8.2
DISTNAME =		zeitgeist-${V}
CATEGORIES =		devel productivity x11
HOMEPAGE =		http://launchpad.net/zeitgeist/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://edge.launchpad.net/zeitgeist/${V:R}/${V}/+download/

MODULES =		lang/python x11/gnome

BUILD_DEPENDS =		textproc/p5-XML-Parser \
			textproc/py-rdflib \
			textproc/raptor \

RUN_DEPENDS =		databases/py-sqlite \
			devel/py-xdg \
			x11/dbus-python \

LIB_DEPENDS =		

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu

MODPY_ADJ_FILES =	zeitgeist-daemon \
			zeitgeist-daemon.py \
			extra/rdfxml2py

.include <bsd.port.mk>
