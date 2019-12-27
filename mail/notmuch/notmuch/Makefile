# $OpenBSD: Makefile.template,v 1.54 2008/01/13 16:43:57 espie Exp $

COMMENT-main =		mail indexer, tagger and threader
COMMENT-emacs =		Emacs bindings for notmuch

PKGNAME-main =		notmuch-${V}
PKGNAME-emacs =		notmuch-emacs-${V}

SHARED_LIBS +=		notmuch	0.0

MULTI_PACKAGES =	-main -emacs
DEBUG_PACKAGES =	-main

COMPILER=		base-clang ports-gcc

WANTLIB-main +=		${COMPILER_LIBCXX} c glib-2.0 gmime-3.0
WANTLIB-main +=		gobject-2.0 intl m talloc xapian z

LIB_DEPENDS =		databases/xapian-core \
			devel/libtalloc \
			mail/gmime30

RUN_DEPENDS-emacs =	devel/desktop-file-utils \
			databases/xapian-core \
			editors/emacs \
			${FULLPKGNAME-main}:${FULLPKGPATH-main}

BUILD_DEPENDS =		devel/doxygen \
			editors/emacs,gtk3 \
			shells/bash \
			textproc/py-sphinx

TEST_DEPENDS =		devel/gdb \
			misc/dtach \
			security/gnupg \
			sysutils/coreutils \
			${FULLPKGNAME-main}:${FULLPKGPATH-main}

MODULES =		lang/python
MODPY_RUNDEP =		No
USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--mandir=${PREFIX}/man \
			--infodir=${PREFIX}/info \
			--sysconfdir=${SYSCONFDIR} \
			--bashcompletiondir=${PREFIX}/share/notmuch/bash_completion.d
CONFIGURE_ENV =		PYTHON=${MODPY_BIN}
MAKE_FLAGS =		V=1

LIBnotmuch_MAJOR =	${LIBnotmuch_VERSION:R}
LIBnotmuch_MINOR =	${LIBnotmuch_VERSION:E}
SUBST_VARS =		LIBnotmuch_MAJOR LIBnotmuch_MINOR NOTMUCH_LIBV

# disable tests which hang and stop other tests from running:
NOTMUCH_SKIP_TESTS =	emacs.65 gzip
# there are still problems in other tests:
# - SIGSEGV in various tests (incl. T150-tagging,
#   T240-dump-restore, T600-named-queries)
# - T750-user-header hits what looks like a use-after-free
TEST_FLAGS =	V=1 \
		NOTMUCH_TEST_SERIALIZE=1 \
		NOTMUCH_SKIP_TESTS="${NOTMUCH_SKIP_TESTS}" \
		TEST_CFLAGS="-O0 -g -I${LOCALBASE}/include -L${LOCALBASE}/lib"
TEST_TARGET =	test

post-extract:
	cd ${WRKSRC}/test; [ -r test-lib-OPENBSD.sh ] || \
	    cp test-lib-FREEBSD.sh test-lib-OPENBSD.sh

# Avoid conflict with C++20 <version>, also see patches
pre-configure:
	cd ${WRKSRC}; mv version version.txt; \
	    ${SUBST_CMD} lib/notmuch.h

post-install:
	rm ${PREFIX}/man/man1/notmuch-setup.1.gz
	gunzip ${PREFIX}/man/*/*gz
	ln -s notmuch.1 ${PREFIX}/man/man1/notmuch-setup.1

.include <bsd.port.mk>
