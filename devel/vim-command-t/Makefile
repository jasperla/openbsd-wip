# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		fast, intuitive file opening in VIM

V =			1.11.2
DISTNAME =		command-t-${V}
PKGNAME =		vim-command-t-${V}
EXTRACT_SUFX =		.vba

CATEGORIES =		devel editors

HOMEPAGE =		https://wincent.com/products/command-t

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c m ruby18

MASTER_SITES =		http://s3.wincent.com/command-t/releases/

SHARED_ONLY =		Yes

# Must stay in synv with the version vim is using!
MODRUBY_REV =		1.8
MODULES =		lang/ruby

RUN_DEPENDS =		vim-*-ruby:editors/vim,no_x11,ruby
BUILD_DEPENDS =		${RUN_DEPENDS}

NO_TEST =		Yes
WRKDIST =		${WRKDIR}/.vim

# Convoluted way to extract a vimball in an automated fashion.
do-extract:
	HOME=${WRKDIR} ${LOCALBASE}/bin/vim \
	     --cmd ":set nocp" \
	     --cmd ":runtime vimballPlugin.vim" \
	     -c ":silent so %" \
	     -c ":qa" \
	     ${DISTDIR}/${DISTNAME}${EXTRACT_SUFX}

# Some parts written in C for speed. Builds a ruby extension.
do-build:
	cd ${WRKBUILD}/ruby/command-t && ${RUBY} extconf.rb && \
		${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}

# This is hardcoded for now. If a vim.port.mk appears, move there.
RUNTIMEDIR =	${PREFIX}/share/vim/vimfiles

do-install:
	rm ${WRKBUILD}/ruby/command-t/watchman.c${PATCHORIG} \
		${WRKBUILD}/.VimballRecord \
		${WRKBUILD}/ruby/command-t/*.{o,h,c}
	${INSTALL_DATA_DIR} ${RUNTIMEDIR}
	cd ${WRKBUILD} && tar -cf - . | tar -C ${RUNTIMEDIR} -xf -
	mv ${PREFIX}/share/vim/vimfiles/doc/tags \
		${PREFIX}/share/vim/vimfiles/doc/vim-command-t.tags

.include <bsd.port.mk>
