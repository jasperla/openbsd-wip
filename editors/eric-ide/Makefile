# $OpenBSD$

COMMENT=	full-featured Python and Ruby editor and IDE

DISTNAME=	eric4-4.5.8

CATEGORIES=	editors

HOMEPAGE=	http://eric-ide.python-projects.org/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=eric-ide/}

MODULES=	lang/python
RUN_DEPENDS=	editors/py-qscintilla
BUILD_DEPENDS=	${RUN_DEPENDS} \
		archivers/gtar
TAR=		gtar

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} ${MODPY_BIN} install.py \
	    -b ${PREFIX}/bin \
	    -d ${WRKINST}${MODPY_LIBDIR} \
	    -a ${PREFIX}/lib/qt4/qsci/api

.include <bsd.port.mk>
