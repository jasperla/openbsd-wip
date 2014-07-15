# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		fast, intuitive file opening in VIM

V =			1.9.1
DISTNAME =		command-t-${V}
PKGNAME =		vim-command-t-${V}
EXTRACT_SUFX =		.vba

CATEGORIES =		editors devel

HOMEPAGE =		https://wincent.com/products/command-t

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c m ruby18

MASTER_SITES =		http://s3.wincent.com/command-t/releases/

SHARED_ONLY =		Yes

# NB: Keep in sync with the version editors/vim uses
# Is there an automatic way (short of making a vim.port.mk)? XXX
MODRUBY_REV =		1.8
MODULES =		lang/ruby

# XXX Dependency too strong. Any flavor with ruby will suffice.
# Is there a way to express that?
BUILD_DEPENDS =		editors/vim,ruby
RUN_DEPENDS =		${BUILD_DEPENDS}

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

# XXX hardcoded vim runtime path, i.e. vim74
# XXX We remove the helptags because the file is owned by editors/vim.
#     If we were to change the file we would screw up checksums.
#     Perhaps remove the helptags from the vim ports and generate them
#     at install time using an @exec?
RUNTIMEDIR =	${PREFIX}/share/vim/vim74
do-install:
	rm ${WRKBUILD}/ruby/command-t/watchman.c${PATCHORIG} \
		${WRKBUILD}/.VimballRecord \
		${WRKBUILD}/doc/tags \
		${WRKBUILD}/ruby/command-t/*.{o,h,c}
	${INSTALL_DATA_DIR} ${RUNTIMEDIR}
	cd ${WRKBUILD} && tar -cf - . | tar -C ${RUNTIMEDIR} -xf -

.include <bsd.port.mk>
