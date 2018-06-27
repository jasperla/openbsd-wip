# $OpenBSD$

DIST_SUBDIR=	lxqt

HOMEPAGE ?=	https://lxqt.org/

CATEGORIES ?=	x11/lxqt

MODULES +=	devel/cmake

MAINTAINER ?=		LXQt porting team <openbsd-lxqt@googlegroups.com>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES +=	https://downloads.lxqt.org/downloads/${NAME}/${VERSION}/
EXTRACT_SUFX =	.tar.xz
