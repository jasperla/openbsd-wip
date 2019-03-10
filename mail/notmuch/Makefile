# $OpenBSD: Makefile.template,v 1.54 2008/01/13 16:43:57 espie Exp $

MULTI_PACKAGES=	-main -emacs -python2.7 -python3.6

V=			0.28.3
PKGNAME=		notmuch-${V}
PKGNAME-main=		notmuch-${V}
PKGNAME-emacs=		notmuch-emacs-${V}
PKGNAME-python2.7=	notmuch-python2.7-${V}
PKGNAME-python3.6=	notmuch-python3.6-${V}
COMMENT-main=		mail indexer (and not much of an email program)
COMMENT-emacs=		Emacs bindings for notmuch
COMMENT-python2.7=	Python 2.7 bindings for notmuch
COMMENT-python3.6=	Python 3.6 bindings for notmuch
DISTNAME=		notmuch-${V}
CATEGORIES=		mail databases
HOMEPAGE=		http://notmuchmail.org
MASTER_SITES=		${HOMEPAGE}/releases/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c \
		c++  \
		c++abi \
		glib-2.0 \
		gmime-2.6 \
		gobject-2.0 \
		pthread \
		talloc \
		z

LIB_DEPENDS=	devel/libtalloc \
		mail/gmime

RUN_DEPENDS-main=	devel/desktop-file-utils \
			databases/xapian-core

RUN_DEPENDS-emacs=	devel/desktop-file-utils \
			databases/xapian-core \
			editors/emacs \
			mail/notmuch

RUN_DEPENDS-python2.7=	devel/desktop-file-utils \
			databases/xapian-core \
			editors/emacs \
			lang/python/2.7 \
			mail/notmuch

RUN_DEPENDS-python3.6=	devel/desktop-file-utils \
			databases/xapian-core \
			editors/emacs \
			lang/python/3.6 \
			mail/notmuch


BUILD_DEPENDS=	devel/doxygen \
		databases/xapian-core \
		editors/emacs \
		lang/python/3.6 \
		lang/python/2.7 \
		textproc/py-sphinx


SHARED_LIBS +=		notmuch 5.2
USE_GMAKE=		Yes
NO_TEST=		Yes
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		--mandir=${PREFIX}/man \
			--infodir=${PREFIX}/info \
			--sysconfdir=${SYSCONFDIR} \
			--bashcompletiondir=${PREFIX}/share/notmuch/bash_completion.d

post-build:
	@cd "${WRKBUILD}/bindings/python" && python2.7 setup.py build
	@cd "${WRKBUILD}/bindings/python" && python3.6 setup.py build

post-install:
	@cd "${WRKBUILD}/bindings/python" && python2.7 setup.py install --root="${WRKINST}"
	@cd "${WRKBUILD}/bindings/python" && python3.6 setup.py install --root="${WRKINST}"


.include <bsd.port.mk>
