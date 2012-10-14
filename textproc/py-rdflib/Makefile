# $OpenBSD$

COMMENT=	Python library to manipulate RDF data

MODPY_EGG_VERSION=	3.0.0
DISTNAME =	rdflib-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES=	textproc devel

HOMEPAGE=	http://www.rdflib.net/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

#SEPARATE_BUILD =	Yes
MODULES =	lang/python

REGRESS_DEPENDS =	devel/py-nose

MODPY_ADJ_FILES =	rdflib/plugins/parsers/notation3.py \
			rdflib/plugins/parsers/ntriples.py \
			run_tests.py \
			setup.py \
			test/test_trix_parse.py \
			test/test_trix_serialize.py \


EXAMPLES_DIR =		${PREFIX}/share/examples/${PKGNAME:C/-[0-9]+.*//}

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLES_DIR}
	${INSTALL_DATA} ${WRKSRC}/examples/*.py ${EXAMPLES_DIR}

do-regress:
	cd ${WRKSRC} && ./run_tests.py

.include <bsd.port.mk>
