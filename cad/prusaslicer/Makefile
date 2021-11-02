# $OpenBSD: $

COMMENT =		G-code generator for 3D printers (Prusa Edition)

# >=1.42.0 wants wxWidgets>=3.1 (development release)
V =			2.0.0
GH_ACCOUNT =		prusa3d
GH_PROJECT =		PrusaSlicer
# XXX: extra leading "v" because bsd.port.mk strips one
GH_TAGNAME =		vversion_${V}
DISTNAME =		PrusaSlicer-${V}

CATEGORIES =		cad graphics

HOMEPAGE =		https://www.prusa3d.com/prusaslicer/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# AGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} GL GLEW GLU boost_atomic-mt boost_chrono-mt
WANTLIB +=	boost_date_time-mt boost_filesystem-mt boost_locale-mt
WANTLIB +=	boost_log-mt boost_log_setup-mt boost_regex-mt boost_system-mt
WANTLIB +=	boost_thread-mt c curl expat m nlopt perl tbb wx_baseu-3.0
WANTLIB +=	wx_gtk3u_adv-3.0 wx_gtk3u_core-3.0 wx_gtk3u_gl-3.0
WANTLIB +=	wx_gtk3u_html-3.0

# C++
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/gtest>=1.7.0 \
			devel/p5-Alien-wxWidgets>=0.69p0 \
			devel/p5-ExtUtils-CppGuess \
			devel/p5-ExtUtils-Typemaps-Default \
			devel/p5-ExtUtils-XSpp \
			math/eigen3>=2.91.0

RUN_DEPENDS =		devel/p5-Moo \
			devel/p5-forks \
			devel/p5-local-lib \
			x11/p5-Wx

LIB_DEPENDS =		devel/boost \
			devel/tbb \
			graphics/glew \
			math/nlopt \
			net/curl \
			x11/wxWidgets,-main>=3.0.4

PERL_SITEARCH !=	echo $$(perl -V::sitearch:)
PERL_SITELIB !=		echo $$(perl -V::sitelib:)

# XXX
post-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${PERL_SITEARCH}
	mv ${WRKINST}/auto/ ${WRKINST}/${PERL_SITEARCH}
	${INSTALL_DATA_DIR} ${WRKINST}/${PERL_SITELIB}
	mv ${PREFIX}/lib/slic3r-prusa3d/*.pm ${WRKINST}/${PERL_SITELIB}
	mv ${PREFIX}/lib/slic3r-prusa3d/Slic3r/* ${WRKINST}/${PERL_SITELIB}/Slic3r
	rm -rf ${PREFIX}/lib/slic3r-prusa3d/

.include <bsd.port.mk>
