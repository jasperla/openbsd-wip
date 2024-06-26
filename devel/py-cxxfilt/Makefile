COMMENT=		demangling C++ symbols in Python

MODPY_EGG_VERSION= 	0.3.0
DISTNAME=		cxxfilt-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		devel

# BSD-2
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD =		setuptools

FLAVORS=	python3
FLAVOR=		python3

# NO_TEST=	Yes
# Copy files for tests
post-extract:
	mkdir ${WRKSRC}/tests
	cp files/test_cxxfilt.py ${WRKSRC}/tests/
	touch ${WRKSRC}/tests/__init__.py

.include <bsd.port.mk>
