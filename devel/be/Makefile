# $OpenBSD$

COMMENT=		distributed bugtracker

MODPY_EGG_VERSION=	1.1.1
DISTNAME=		be-${MODPY_EGG_VERSION}

CATEGORIES=		devel www

HOMEPAGE=		http://www.bugseverywhere.org/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://download.bugseverywhere.org/releases/

MODULES=		lang/python

TEST_DEPENDS=		devel/libgit2/py-git2 \
			textproc/py-yaml

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test.py

.include <bsd.port.mk>
