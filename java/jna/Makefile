# $OpenBSD$

COMMENT=	Java Native Access (JNA)

V=		3.3.0
DISTNAME=	jna
PKGNAME=	jna-$V
CATEGORIES=	java devel

HOMEPAGE=	https://github.com/twall/jna

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/raw/3.3.0/jnalib/dist/

DISTFILES=	${DISTNAME}.jar \
		platform.jar

EXTRACT_SUFX=	#empty
EXTRACT_ONLY=	#empty

DIST_SUBDIR=	jna

MODULES=	java
MODJAVA_VER=	1.5+

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/jna/
	${INSTALL_DATA} ${FULLDISTDIR}/*.jar ${PREFIX}/share/java/jna/

.include <bsd.port.mk>
