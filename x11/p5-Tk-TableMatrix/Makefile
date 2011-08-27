# $OpenBSD$

COMMENT =	Create and manuipldate table

DISTNAME =	Tk-TableMatrix-1.23
CATEGORIES =	x11 devel
CPAN_AUTHOR =   CERNEY

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# custom
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

WANTLIB +=	X11 m

MODULES =	cpan

RUN_DEPENDS =	x11/p5-Tk
BUILD_DEPENDS =	x11/p5-Tk

USE_GROFF = 	Yes
 
REGRESS_IS_INTERACTIVE = X11

PKG_ARCH = 	${MACHINE_ARCH}

.include <bsd.port.mk>
