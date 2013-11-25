# $OpenBSD: Makefile,v 1.34 2013/04/16 05:21:19 bentley Exp $

COMMENT-context =	texlive texmf for conTeXt
COMMENT-docs =		texlive documentation
COMMENT-full =		texlive texmf for extra macros
COMMENT-main =		texlive texmf for basic functionality
COMMENT-buildset =	smallest texlive texmf for building ports

DISTNAME =		texlive-${DIST_V}-texmf
MASTER_SITES0 =		http://spacehopper.org/mirrors/ \
			http://theunixzoo.co.uk/distfiles/
MASTER_SITES0 =		http://theunixzoo.co.uk/distfiles/
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			texlive-${DIST_V}-extra${EXTRACT_SUFX} \
			texmf-var-pregen-${V}${EXTRACT_SUFX}:0

PKGNAME-main =		texlive_texmf-minimal-${V}
PKGNAME-full =		texlive_texmf-full-${V}
PKGNAME-docs =		texlive_texmf-docs-${V}
PKGNAME-context =	texlive_texmf-context-${V}
PKGNAME-buildset =	texlive_texmf-buildset-${V}

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

BUILD_DEPENDS =		archivers/xz
#RUN_DEPENDS-full =	texlive_texmf-minimal-${V}:print/texlive/texmf,-main \
#			texlive_base-${V}:print/texlive/base
# We dont use auto module deps for these, as MODULES is not per SUBPACKAGE
MODULES +=		lang/ruby lang/python
MODRUBY_REV =		1.8
MODRUBY_BUILDDEP =	No
MODRUBY_RUNDEP =	No
MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No

# XXX put all this back at a later date
#RUN_DEPENDS-full +=	lang/python/${MODPY_VERSION}

#RUN_DEPENDS-context +=	texlive_base-${V}:print/texlive/base \
#			lang/ruby/${MODRUBY_REV}
#RUN_DEPENDS-context +=	lang/ruby/${MODRUBY_REV}
#RUN_DEPENDS-docs +=	texlive_base-${V}:print/texlive/base \
#			x11/p5-Tk
#RUN_DEPENDS-docs +=	x11/p5-Tk

# XXX RUN_DEPENDS-buildset

MULTI_PACKAGES =	-context -docs -full -main -buildset

do-install:
	mv ${WRKDIST}/texmf-dist ${PREFIX}/share

	# plug in my pregenerated map and formats
	mv ${WRKDIR}/texmf-var ${PREFIX}/share

	# Put manuals in the right place.
	#
	# The rest of share/texmf-dist/doc/man does not appear
	# in the packing list, so the PDF versions will not be installed.
	# 
	# I am told by upstream that any manual page not under
	# texmf-dist/doc/man is intentionally this way and should not be
	# moved into the system manual path. So be it.
	mv ${PREFIX}/share/texmf-dist/doc/man/man1/*.1 \
		${PREFIX}/man/man1/
	mv ${PREFIX}/share/texmf-dist/doc/man/man5/*.5 \
		${PREFIX}/man/man5/

	# adjust permissions
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/{share/texmf*,man/man*/*}

# selfauto does not work with our legacy texmf paths, patch in paths.
post-install:
	${SUBST_CMD} ${PREFIX}/share/texmf-dist/web2c/texmf.cnf
	${SUBST_CMD} ${PREFIX}/share/texmf-dist/web2c/texmfcnf.lua

.include <bsd.port.mk>
