# $OpenBSD: Makefile,v 1.19 2011/09/22 18:42:14 rpointel Exp $
#
# XXX update path FUCKED
# XXX desktop files

COMMENT=		enhanced interactive Python shell

MODPY_EGG_VERSION=	0.13.1
DISTNAME=		ipython-${MODPY_EGG_VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://ipython.org/

MAINTAINER=		Will Maier <wcmaier@openbsd.org>

MODULES=		lang/python

# py-qt4 as a "soft" dependency. ie. install it if you want it. See MESSAGE.
RUN_DEPENDS =		textproc/py-pygments \
			graphics/py-matplotlib \
			net/py-zmq \
			www/py-tornado
REGRESS_DEPENDS =	devel/py-nose

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PYPI:=i/ipython/}

USE_GROFF =	Yes

# Despite the fact that setupbase.py defines paths for examples to
# be installed into, we still have to do it manually for some reason.
EXAMPLES_DIR =	${PREFIX}/share/examples/ipython/
APPS_DIR = 	${PREFIX}/share/applications/
post-install:
	${INSTALL_DATA_DIR} ${APPS_DIR}
	mv ${WRKSRC}/docs/examples/core/*.desktop ${APPS_DIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${APPS_DIR}
	${INSTALL_DATA_DIR} ${EXAMPLES_DIR}
	${INSTALL_DATA} ${WRKSRC}/docs/emacs/ipython.el ${EXAMPLES_DIR}
	mv ${WRKSRC}/docs/examples/* ${EXAMPLES_DIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${EXAMPLES_DIR}

do-regress:
	cd ${WRKSRC} && ${MODPY_BIN} ${MODPY_SETUP} check

.include <bsd.port.mk>
