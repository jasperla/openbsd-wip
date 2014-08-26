# $OpenBSD: Makefile,v 1.11 2013/07/01 10:39:18 sthen Exp $

COMMENT=		common base representation of Python source code

MODPY_EGG_VERSION =	1.1.1
DISTNAME=		astroid-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		devel

HOMEPAGE=		http://www.logilab.org/projects/astng/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

#https://pypi.python.org/packages/source/a/astroid/astroid-1.1.1.tar.gz
MASTER_SITES =		${MASTER_SITE_PYPI:=a/astroid/}

MODULES=		lang/python
RUN_DEPENDS=		devel/py-logilab-common
TEST_DEPENDS=	${RUN_DEPENDS}

# Note: This is not pytest as in devel/py-test.
do-test: install
	@cd ${WRKSRC}/test && ${MODPY_BIN} /usr/local/bin/pytest

# A load of files in ${WRKBUILD} are for some reason root:wheel after install,
# so it won't clean as a normal user. I can't see why this is. Work around.
# XXX horrible.
#post-install:
#	chmod -R 777 ${WRKBUILD}

.include <bsd.port.mk>
