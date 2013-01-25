# $OpenBSD: Makefile.inc,v 1.12 2010/07/10 16:57:22 espie Exp $

CATEGORIES ?=		x11
CATEGORIES +=		x11/kde4
MODULES +=		x11/kde4

MASTER_SITES ?=		${MASTER_SITE_KDE:=stable/${MODKDE4_VERSION}/src/}
DIST_SUBDIR =		kde
HOMEPAGE ?=		https://projects.kde.org/projects
MAINTAINER ?=		KDE porting team <openbsd-kde@googlegroups.com>

# KDE SC is mostly GPL, or LGPL/BSDL for the central libraries
PERMIT_DISTFILES_CDROM ?=	Yes
PERMIT_DISTFILES_FTP ?=		Yes
PERMIT_PACKAGE_CDROM ?=		Yes
PERMIT_PACKAGE_FTP ?=		Yes

# Do not rely on devel/cmake to set CONFIGURE_STYLE on it's own:
# ports can request more MODULES, and the full list may become e.g.:
#   lang/python x11/kde4 devel/cmake x11/qt4
# In this case, CONFIGURE_STYLE will be set by lang/python module, as
# it gets evaluated first, and port build will break. We DO know that
# all KDE SC stuff is built using CMake anyway.
CONFIGURE_STYLE =	cmake

MIN_AKONADI_VERSION ?=	1.8.1
MIN_SOPRANO_VERSION ?=	2.8.0

MODKDE4_LIB_LINKS ?=	Yes
