# $OpenBSD$

COMMENT =	Python interface to Amazon Web Services

MODPY_EGG_VERSION = 2.3.0
DISTNAME =	boto-${MODPY_EGG_VERSION}
PKGNAME = 	py-${DISTNAME}
CATEGORIES =	net

HOMEPAGE =	http://code.google.com/p/boto/
MASTER_SITES =	http://boto.googlecode.com/files/ \
		${MASTER_SITE_PYPI:=b/boto/}

MAINTAINER =	Jim Razmus II <jim@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
BUILD_DEPENDS =		textproc/py-sphinx

NO_REGRESS = 		Yes

post-build:
	cd ${WRKSRC} && \
		PYTHONPATH=${WRKSRC}\
		 ${LOCALBASE}/bin/sphinx-build -N -b text docs/source \
		build/doc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-boto/ref/
	${INSTALL_DATA} ${WRKSRC}/README.markdown ${PREFIX}/share/doc/py-boto
	${INSTALL_DATA} ${WRKSRC}/build/doc/*.txt ${PREFIX}/share/doc/py-boto
	${INSTALL_DATA} ${WRKSRC}/build/doc/ref/*.txt ${PREFIX}/share/doc/py-boto/ref

.include <bsd.port.mk>
