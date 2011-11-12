# $OpenBSD$

COMMENT=		MapReduce on Python

V=			0.1.2
DISTNAME=		mincemeatpy-$V
PKGNAME=		py-mincemeat-$V
CATEGORIES=		devel

HOMEPAGE=		http://remembersaurus.com/mincemeatpy/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

MODULES=	lang/python

MODPY_BUILDDEP= No
NO_BUILD=	Yes

# Set WRKSRC so MODPY_ADJ_FILES will work.
WRKSRC= 	${WRKDIR}
MODPY_ADJ_FILES=example.py mincemeat.py

# Upstream forgot to include this into the release tarball.
post-extract:
	cp ${FILESDIR}/example.py ${WRKSRC}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/py-mincemeat/
	${INSTALL_DATA} ${WRKSRC}/example.py \
		${PREFIX}/share/examples/py-mincemeat/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-mincemeat/
	${INSTALL_SCRIPT} ${WRKDIR}/mincemeat.py ${PREFIX}/bin/

.include <bsd.port.mk>
