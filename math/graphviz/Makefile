# $OpenBSD: Makefile,v 1.72 2017/11/14 20:10:11 naddy Exp $

COMMENT-main=	graph drawing software

VERSION =	2.40.1
DISTNAME=	graphviz
PKGNAME-main=	${DISTNAME}-${VERSION}
CATEGORIES=	math devel graphics

# there is only one multi-package due to legacy, but maybe more
# will appear in the form of language bindings.
MULTI_PACKAGES=	-main

# to let update-patches work in a simpler way
PATCHORIG=	.orig2

MASTER_SITES=	${HOMEPAGE}pub/graphviz/stable/SOURCES/

SHARED_LIBS += gvplugin_core		2.0 # 6.0
SHARED_LIBS += gvplugin_gd		2.0 # 6.0
SHARED_LIBS += gvplugin_pango		2.0 # 6.0
SHARED_LIBS += gvplugin_dot_layout	2.0 # 6.0
SHARED_LIBS += gvplugin_neato_layout	2.0 # 6.0
SHARED_LIBS += gvplugin_xlib		2.0 # 6.0
SHARED_LIBS += gvplugin_gtk		2.0 # 6.0
SHARED_LIBS += gvplugin_rsvg		1.0 # 6.0
SHARED_LIBS += gvplugin_gdk		1.0 # 6.0
SHARED_LIBS += gvplugin_poppler		1.0 # 6.0

SHARED_LIBS += lab_gamut		0.0 # 1.0
SHARED_LIBS += cdt			1.0 # 5.0
SHARED_LIBS += pathplan			2.0 # 4.0
SHARED_LIBS += gvc			1.0 # 6.0
SHARED_LIBS += cgraph			0.0 # 6.0
SHARED_LIBS += gvpr			0.0 # 2.0
SHARED_LIBS += xdot			0.0 # 4.0
SHARED_LIBS += gdtclft			3.0 # unknown
SHARED_LIBS += tcldot			3.0 # unknown
SHARED_LIBS += tcldot_builtin		3.0 # unknown
SHARED_LIBS += tclplan			3.0 # unknown

HOMEPAGE=	https://www.graphviz.org/

MAINTAINER =	Edd Barrett <edd@openbsd.org>

# Eclipse Public License v1.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xau Xaw Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xmu Xpm Xrandr
WANTLIB += Xrender Xt atk-1.0 c cairo croco-0.6 expat ffi fontconfig
WANTLIB += freetype fribidi gd gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gmp gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 guile harfbuzz iconv intl jpeg lcms2 ltdl
WANTLIB += lzma m openjp2 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre perl pixman-1 png poppler poppler-glib rsvg-2
WANTLIB += tiff webp xcb xcb-render xcb-shm xml2 z

MODULES=	x11/tk \
		perl

MODTCL_VERSION=	8.6

LIB_DEPENDS =	graphics/jpeg \
		graphics/png \
		devel/libtool,-ltdl \
		graphics/gd>=2.0.34 \
		x11/gtk+2 \
		www/libcroco \
		x11/gnome/librsvg \
		graphics/graphite2 \
		devel/harfbuzz \
		print/poppler \
		lang/guile

BUILD_DEPENDS=	devel/swig \
		${MODTCL_BUILD_DEPENDS}

RUN_DEPENDS =	${MODTCL_RUN_DEPENDS}

USE_GMAKE =	Yes

CONFIGURE_STYLE=gnu

# Note: --with-tclsh is misspelled "--with-tcl" in configure's help output
CONFIGURE_ARGS=	--enable-tcl=yes \
		--enable-perl \
		--enable-guile \
		--with-tclsh=${MODTCL_BIN} \
		--disable-lua \
		--disable-io \
		--disable-java \
		--disable-ocaml \
		--disable-php \
		--disable-python \
		--disable-ruby \
		--disable-rpath \
		--disable-sharp \
		--disable-r \
		--disable-gts \
		--without-ghostscript \
		--without-devil \
		--without-lasi \
		--without-qt \
		--without-glut \
		--with-gd

CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		TCLCONFIG=${MODTCL_CONFIG}

DOCBASE=	${PREFIX}/share/doc/graphviz
EXBASE=		${PREFIX}/share/examples/graphviz

MAKE_FLAGS=	TCL_STUB_LIB_SPEC='-L${LOCALBASE}/lib -ltclstub86_pic'

CFLAGS +=	-DLT_DEBUG_LOADERS

FAKE_FLAGS=	htmldir="${DOCBASE}/html" \
		pdfdir="${DOCBASE}/pdf" \
		txtdir="${DOCBASE}" \
		demodir="${EXBASE}/demo" \
		directeddir="${EXBASE}/graphs/directed" \
		leftydir="${EXBASE}/lefty" \
		pathplanexampledir="${EXBASE}/demo/pathplan_data" \
		undirecteddir="${EXBASE}/graphs/undirected" \
		pkgtcldir="${MODTCL_TCLDIR}/graphviz"

TEST_TARGET =	check
TEST_DEPENDS =	shells/ksh93 \
		${FULLPKGNAME}:math/graphviz

WRKDIST=	${WRKDIR}/${PKGNAME-main}

post-install:
# install pre-generated config6 to avoid @exec/@unexec-delete
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/config6 ${PREFIX}/lib/graphviz/config6
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/graphviz/config6
# Once upon a time, graphviz used to install the symlink:
# ${PREFIX}/lib/tcl${MODTCL_VERSION}/graphviz -> ${PREFIX}/lib/tcl/graphviz
# Now it installs a copy of the dir, however, 'pkg_add -u' can't update a
# symlink to a dir, so we manually hack back the old symlink.
	rm -Rf ${PREFIX}/lib/tcl${MODTCL_VERSION}/graphviz
	ln -s ${TRUEPREFIX}/lib/tcl/graphviz \
		${PREFIX}/lib/tcl${MODTCL_VERSION}/graphviz

pre-test:
	sed -i s,#!/bin/ksh,#!/${LOCALBASE}/bin/ksh93, ${WRKSRC}/rtest/rtest.sh

# NOTE: When updating this port:
#  * Check we have commented .la and .a corresponding to unversioned .so files
#    in the packing list.
#  * Run 'dot -c' manually and subsitute all hardcoded library versions to
#    ${LIB_libname_VERSION}. Put the file in files/config6

.include <bsd.port.mk>
