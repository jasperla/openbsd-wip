# $OpenBSD$

COMMENT = 	Python-like language for the .NET/Mono platform

PNAME =		boo
V =		0.9.4
BUILD_NUM =	9

DISTNAME = 	${PKGNAME}.${BUILD_NUM}
PKGNAME = 	${PNAME}-${V}
CATEGORIES = 	lang

EXTRACT_SUFX = 	-src.zip

HOMEPAGE = 	http://boo.codehaus.org/

MAINTAINER = 	Ryan Boggs <rmboggs@gmail.com>

# MIT/BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES = 		http://dist.codehaus.org/boo/distributions/

MODULES = 		lang/mono

BUILD_DEPENDS +=	lang/antlr3
LIB_DEPENDS +=		lang/mono \
			x11/gtksourceview

DOCDIR =		${PREFIX}/share/doc/${PNAME}
EXAMPLEDIR =		${PREFIX}/share/examples/${PNAME}

WRKDIST =		${WRKDIR}

USE_NANT =		Yes

NANT_FLAGS =		-D:install.prefix=${PREFIX} \
			-D:skip.vs=true \
			-D:antlr.jar=${LOCALBASE}/share/java/classes/antlr3.jar

NO_REGRESS =		Yes

pre-install:
	@${INSTALL_DATA_DIR} ${DOCDIR}
	@${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	
post-install:
	@cp -Rp ${WRKDIST}/docs/* ${DOCDIR}
	@cp -Rp ${WRKDIST}/*.txt ${DOCDIR}
	@cp -Rp ${WRKDIST}/examples/* ${EXAMPLEDIR}

.include <bsd.port.mk>
