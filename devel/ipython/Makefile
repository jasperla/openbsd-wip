# $OpenBSD: Makefile,v 1.19 2011/09/22 18:42:14 rpointel Exp $
#
# XXX update path FUCKED

COMMENT=		enhanced interactive Python shell

MODPY_EGG_VERSION=	0.13.1
DISTNAME=		ipython-${MODPY_EGG_VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://ipython.org/

MAINTAINER=		Will Maier <wcmaier@openbsd.org>

MODULES=		lang/python

# py-qt4 as a "soft" dependency for qtconsole.
# There are a bunch of other event loops which are used in rare cases.
# These can be soft dependencies too.
RUN_DEPENDS =		textproc/py-pygments \
			graphics/py-matplotlib>=1.2.0 \
			net/py-zmq \
			www/py-tornado
REGRESS_DEPENDS =	devel/py-nose
BUILD_DEPENDS =		textproc/py-sphinx

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PYPI:=i/ipython/}

USE_GROFF =	Yes

# Build some HTML docs.
# This will whine about missing modules (such as pyglet and opengl) if
# they are not installed. The generated documentation is still fine despite
# this. Sphinx also generates a lot of warnings, which again do not affect
# the resulting documentation. According to people in the IPython IRC channel
# it is expected behaviour. This also makes systrace unhappy, but again, the
# resulting docs are fine...
post-build:
	${MAKE_ENV} cd ${WRKSRC}/docs && ${MAKE_PROGRAM} html

# Despite the fact that setupbase.py defines paths for examples to
# be installed into, we still have to do it manually for some reason.
EXAMPLES_DIR =	${PREFIX}/share/examples/ipython/
APPS_DIR = 	${PREFIX}/share/applications/
DOCS_DIR =	${PREFIX}/share/doc/ipython/
post-install:
	# desktop files
	${INSTALL_DATA_DIR} ${APPS_DIR}
	mv ${WRKSRC}/docs/examples/core/*.desktop ${APPS_DIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${APPS_DIR}
	# emacs stuff
	${INSTALL_DATA} ${WRKSRC}/docs/emacs/ipython.el ${EXAMPLES_DIR}
	# html docs
	cp -r ${WRKSRC}/docs/build/html ${DOCS_DIR}/html
	chown -R ${SHAREOWN}:${SHAREGRP} ${DOCS_DIR}
	# empty dir i dont want in the PLIST
	rm -r ${DOCS_DIR}/extensions

do-regress:
	cd ${WRKSRC} && ${MODPY_BIN} ${MODPY_SETUP} check

.include <bsd.port.mk>
