DISTNAME=	gns3-gui-2.2.54
CATEGORIES=	emulators

#MODPY_EGG_VERSION=	2.2.54
GH_ACCOUNT=	GNS3
GH_PROJECT=	gns3-gui
GH_TAGNAME=	v2.2.54

MAINTAINER=	Saeed Mahjoob <saeed@cloud9p.org>
HOMEPAGE=	https://github.com/GNS3/gns3-gui
COMMENT=	GNS3 network simulator - Graphical user interface package

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
#MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	x11/py-qt5 \
		sysutils/py-psutil \
		sysutils/py-distro \
		devel/py-jsonschema

NO_TEST=	Yes

.include <bsd.port.mk>
