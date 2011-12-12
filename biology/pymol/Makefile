# $OpenBSD $
COMMENT=	Free and Open-Source molecular modeling system	

V=		1.4.1
DISTNAME=	pymol-$V
PKGNAME=	pymol-$V
CATEGORIES=	biology	

HOMEPAGE=	http://pymol.org

MAINTAINER=	Rafael Sadowski <rafael@sizeofvoid.org>

# OSS (C) Schrodinger, LLC. 
PERMIT_PACKAGE_CDROM=	NO
PERMIT_PACKAGE_FTP=	NO
PERMIT_DISTFILES_CDROM=	NO
PERMIT_DISTFILES_FTP=	NO

# build tarball from svn-repo rev. 3946 
MASTER_SITES=	http://www.sizeofvoid.org/pub/OpenBSD/distfiles/
EXTRACT_SUFX=	.tar.bz2

WANTLIB= GL GLU glut png z freetype GLEW

USE_GMAKE=	Yes
NO_REGRESS=	Yes

BUILD_DEPENDS=	math/py-Numeric \
		devel/gmake \
		graphics/png \
		print/freetype \
		graphics/glew \
		graphics/freeglut

LIB_DEPENDS=	graphics/png \
		print/freetype \
		graphics/glew \
		math/py-Numeric \
		graphics/freeglut \
		${MODPY_LIB_DEPENDS}


MODULES=	lang/python

MODPY_SETUP=	setup.py
EXAMPLESDIR=	${PREFIX}/share/examples/pymol

do-configure:
	@perl -pi -e "s,%%LOCALBASE%%,${LOCALBASE},g;" \
		${WRKSRC}/${MODPY_SETUP}
post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA_DIR} ${WRKSRC}/examples ${EXAMPLESDIR}

.include <bsd.port.mk>
