# $OpenBSD$

COMMENT =		shared resources for use by creative applications
DISTNAME =		create-0.1.3
PKGNAME =		${DISTNAME:C/-/-resources-/1}
PKG_ARCH =		*

CATEGORIES =		graphics

HOMEPAGE =		http://create.freedesktop.org

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}/releases/create/
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/scons

NO_BUILD =		Yes
NO_REGRESS =		Yes

.include <bsd.port.mk>
