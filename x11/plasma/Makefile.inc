# $OpenBSD$

CATEGORIES +=		x11 x11/plasma

VERSION ?=		5.5.2
MAINTAINER ?=		KDE porting team <openbsd-kde@googlegroups.com>
HOMEPAGE ?=		https://projects.kde.org/projects/kde/workspace/${DISTNAME:C/-[0-9].*//}

# usual KDE rules:
# LGPLv2.1+, GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	cmake
MODULES :=		devel/kf5 ${MODULES}

MASTER_SITES =		${MASTER_SITE_KDE:=stable/plasma/${VERSION}/}

DIST_SUBDIR =		kde
