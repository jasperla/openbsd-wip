# $OpenBSD$

COMMENT = 		Python like language for the .NET/Mono platform

PNAME =			boo
V =				0.9.4
BUILD_NUM =		9

PKGNAME = 		${PNAME}-${V}
DISTNAME = 		${PKGNAME}.${BUILD_NUM}
CATEGORIES = 	lang

EXTRACT_SUFX = 	-src.zip

HOMEPAGE = 		http://boo.codehaus.org/

MAINTAINER = 	Ryan Boggs <rmboggs@gmail.com>

# MIT/BSD
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP = 		Yes
PERMIT_DISTFILES_CDROM = 	Yes
PERMIT_DISTFILES_FTP = 		Yes

MASTER_SITES = 			http://dist.codehaus.org/boo/distributions/

MODULES = 				lang/mono

BUILD_DEPENDS +=	  	lang/antlr2
LIB_DEPENDS += 			lang/mono \
						misc/shared-mime-info \
						x11/gtksourceview

DOCDIR = 				/share/doc/${PNAME}
EXAMPLEDIR = 			/share/examples/${PNAME}

WRKDIST = 				${WRKDIR}

USE_NANT =  			Yes

NANT_FLAGS = 			-D:install.prefix=${PREFIX} \
						-D:skip.vs=true \
						-D:antlr.jar=${PREFIX}/share/java/antlr-2.7.5.jar

NO_REGRESS = 			Yes

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}${DOCDIR}
	@${INSTALL_DATA_DIR} ${PREFIX}${EXAMPLEDIR}
	
post-install:
	@cp -Rp ${WRKDIST}/docs/* ${PREFIX}${DOCDIR}
	@cp -Rp ${WRKDIST}/*.txt ${PREFIX}${DOCDIR}
	@cp -Rp ${WRKDIST}/examples/* ${PREFIX}${EXAMPLEDIR}

.include <bsd.port.mk>
