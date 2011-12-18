# $OpenBSD$

COMMENT =		megaglest data

DISTNAME =		megaglest-data-3.6.0

# CC-BY-SA
PERMIT_PACKAGE_CDROM =  Yes
PERMIT_PACKAGE_FTP =    Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =  Yes

EXTRACT_SUFX =		.tar.xz

MODULES = 		devel/cmake
PKG_ARCH = 		*
NO_BUILD =		Yes
NO_REGRESS =		Yes

WRKDIST =  		${WRKDIR}/${DISTNAME:S/data-//}

.include <bsd.port.mk>
