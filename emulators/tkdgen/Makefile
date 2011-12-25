# $Id: Makefile,v 1.6 2009/06/21 09:53:01 yason Exp $
# $OpenBSD$

COMMENT = 		graphical frontend to dgen
DISTNAME = 		tkdgen-1.1.1
CATEGORIES = 		emulators

# GPLv2
PERMIT_PACKAGE_CDROM = 	Yes
PERMIT_PACKAGE_FTP = 	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = 	Yes

MASTER_SITES = 		${MASTER_SITE_SOURCEFORGE:=tkdgen/}

RUN_DEPENDS = 		emulators/dgen

MODULES = 			x11/tk

CONFIGURE_STYLE = 	gnu old

NO_REGRESS = 		Yes

pre-configure:
	@perl -pi -e 's|DIRTKDGEN|${PREFIX}/share|g' \
	${WRKSRC}/tkdgen.tcl

.include <bsd.port.mk>
