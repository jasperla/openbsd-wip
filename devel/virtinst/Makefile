# $OpenBSD$

COMMENT=		tool to provision operating systems into virtual machines

MODPY_EGG_VERSION=	0.600.3
DISTNAME=		virtinst-${MODPY_EGG_VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://virt-manager.org/

MASTER_SITES=		${HOMEPAGE}/download/sources/virtinst/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		devel/gettext \
			lang/python

RUN_DEPENDS=		www/py-urlgrabber

.include <bsd.port.mk>
