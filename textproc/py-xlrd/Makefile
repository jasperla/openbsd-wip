# $OpenBSD$

COMMENT=	extract data from xls and xlsx spreadsheet files

MODPY_EGG_VERSION=	1.1.0
DISTNAME=	xlrd-${MODPY_EGG_VERSION}
PKGNAME=	py-xlrd-${MODPY_EGG_VERSION}

CATEGORIES=	textproc devel

HOMEPAGE=	http://www.python-excel.org/

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS = 	Yes

FLAVORS=	python3
FLAVOR?=

PY_MAJOR = 2
.if ${FLAVOR:Mpython3}
PY_MAJOR = 3
.endif

SUBST_VARS+=	PY_MAJOR

post-install:
	cd ${WRKINST}/usr/local/bin/ && mv runxlrd.py runxlrd${PY_MAJOR}.py

.include <bsd.port.mk>
