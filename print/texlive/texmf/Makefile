# $OpenBSD: Makefile,v 1.30 2012/08/07 15:15:09 edd Exp $

COMMENT-context =	texlive texmf for conTeXt
COMMENT-docs =		texlive documentation
COMMENT-full =		texlive texmf for extra macros
COMMENT-main =		texlive texmf for basic functionality

DISTNAME =		texlive-${DIST_V}-texmf
#MASTER_SITES0 =	http://spacehopper.org/mirrors/ \
#			http://theunixzoo.co.uk/distfiles/
MASTER_SITES0 =		http://theunixzoo.co.uk/distfiles/
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			texlive-${DIST_V}-extra${EXTRACT_SUFX} \
			texmf-var-pregen-${V}${EXTRACT_SUFX}:0

PKGNAME-main =		texlive_texmf-minimal-${V}
PKGNAME-full =		texlive_texmf-full-${V}
PKGNAME-docs =		texlive_texmf-docs-${V}
PKGNAME-context =	texlive_texmf-context-${V}

NO_BUILD =		Yes
NO_REGRESS =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		archivers/xz
RUN_DEPENDS-full =	texlive_texmf-minimal-${V}:print/texlive/texmf,-main \
			texlive_base-${V}:print/texlive/base
# We dont use auto module deps for these, as MODULES is not per SUBPACKAGE
MODULES +=		lang/ruby lang/python
MODRUBY_BUILDDEP =	No
MODRUBY_RUNDEP =	No
MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No
RUN_DEPENDS-full +=	lang/python/${MODPY_VERSION}

RUN_DEPENDS-context +=	texlive_base-${V}:print/texlive/base \
			lang/ruby/${MODRUBY_REV}
RUN_DEPENDS-context +=	lang/ruby/${MODRUBY_REV}
RUN_DEPENDS-docs +=	texlive_base-${V}:print/texlive/base \
			x11/p5-Tk
RUN_DEPENDS-docs +=	x11/p5-Tk

MULTI_PACKAGES =	-context -docs -full -main

do-install:
	chown -R ${SHAREOWN}:${SHAREGRP} ${WRKDIST}
	
	# The rest goes in share/texmf*
	mv ${WRKDIST}/texmf ${PREFIX}/share
	mv ${WRKDIST}/texmf-dist ${PREFIX}/share

	# Collect all the manual pages that are *everywhere* for
	# some reason. I wanted to use file(1) to detect if files
	# are manual pages, but it gets it wrong (sigh).
	# XXX check that everything we move here is a manual page
	for i in `find  ${PREFIX} -type f | grep -e '.*\.1$$'`; do \
		mv $$i ${PREFIX}/man/man1/ ;\
	done
	
	# plug in my pregenerated map and formats
	chown -R ${SHAREOWN}:${SHAREGRP} ${WRKDIR}/texmf-var
	mv ${WRKDIR}/texmf-var ${PREFIX}/share

# selfauto does not work with our legacy texmf paths, patch in paths.
post-install:
	${SUBST_CMD} ${PREFIX}/share/texmf/web2c/texmf.cnf
	${SUBST_CMD} ${PREFIX}/share/texmf/web2c/texmfcnf.lua

.include <bsd.port.mk>
