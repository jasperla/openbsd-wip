# $OpenBSD: Makefile,v 1.4 2013/10/16 19:22:36 juanfra Exp $

SHARED_ONLY =		Yes
# Racket only supports i386 and amd64 on OpenBSD.
# Work in progress on other platforms.
ONLY_FOR_ARCHS =	i386 amd64

# XXX Change COMMENT and DESCR for racket 6. The core will not include
# the IDE, gui libs, teaching collects, etc. And probably "descendant of
# scheme" isn't the best description for racket.
COMMENT =		multi-paradigm programming language

V =			5.91.0.900pre201312290345
PKGNAME =		racket-$V
# The project uses racket-* for stable and plt-* for development releases
DISTNAME =		racket-$V-src-unix

# Each new version of racket is incompatible with the previous one.
# Increase always the major number.
# http://article.gmane.org/gmane.comp.lang.racket.devel/9872
SHARED_LIBS +=		racket3m	1.0 # 6.0.0

CATEGORIES =		lang
# Since racket 6, the build of the package is pretty fast but raco uses a less
# tested aproach to use more than 1 job on the build, so let enabled the dpb
# option as a quick test for raco on every platform. When we have TLS support
# (and places), raco will use a widely tested code to the parallel build.
DPB_PROPERTIES =	parallel
HOMEPAGE =		http://racket-lang.org/
MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://download.racket-lang.org/installers/${V}/racket/ \
			https://www.cs.utah.edu/plt/installers/${V}/racket/ \
			https://www.eecs.northwestern.edu/racket/${V}/racket/ \
			http://mirror.csclub.uwaterloo.ca/racket/racket-installers/${V}/racket/ \
			http://mirror.informatik.uni-tuebingen.de/mirror/racket/${V}/racket/ \
			http://pre.racket-lang.org/release/installers/ \
			http://pre.racket-lang.org/installers/ \
			http://download.tuxfamily.org/jod/lang/racket/ \
			ftp://download.tuxfamily.org/jod/lang/racket/
EXTRACT_SUFX = .tar.lz

#MODULES +=		converters/libiconv
MODULES +=		converters/libiconv \
			lang/clang

# Racket crashes in the udp test with system and ports gcc
MODCLANG_ARCHS = *
MODCLANG_LANGS = c c++

# http://docs.racket-lang.org/draw/libs.html
# http://docs.racket-lang.org/gui/libs.html
# Some deps are listed in the README, others in the doc and others
# are called by ffi.
LIB_DEPENDS =		devel/libffi>=3.0.9p2
BUILD_DEPENDS =		devel/pango \
			graphics/jpeg
RUN_DEPENDS =		x11/gtkglext \
			devel/libunique \
			databases/iodbc,-main

WANTLIB += c m pthread ffi

WRKDIST =		${WRKDIR}/racket-$V
WRKSRC =		${WRKDIST}/racket/src

# MAKE_JOBS: If "places" is enabled, racket uses "places channels". When
# "places" is disabled, racket uses multiple racket processes and pipes.
# http://permalink.gmane.org/gmane.comp.lang.racket.user/17281
# https://github.com/plt/racket/commit/2295d16074b9538ce500cf9bf9de65265ce5531c
# CPU=${MAKE_JOBS} and JOB_OPTIONS="-j ${MAKE_JOBS}" only work
# with the main Makefile. Use instead the old PLT_SETUP_OPTIONS.
MAKE_ENV +=		PLT_SETUP_OPTIONS="-j ${MAKE_JOBS}"

# Install the package "racket-test" with raco to run the tests
NO_TEST =		Yes
SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-libffi \
			--enable-gracket \
			--enable-jit \
			--enable-foreign \
			--enable-float \
			--enable-docs \
			--enable-pthread \
			--enable-lt=${LIBTOOL}
# "backtrace" is expensive.
# http://article.gmane.org/gmane.comp.lang.racket.devel/6700
# "places" and "futures" require thread-local storage.
# http://article.gmane.org/gmane.comp.lang.racket.user/16723
CONFIGURE_ARGS +=	--disable-backtrace \
			--disable-places \
			--disable-futures

CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LIBracket3m_MAJOR=${LIBracket3m_VERSION:R} \
			LIBracket3m_MINOR=${LIBracket3m_VERSION:E}

FLAVORS =		debug
FLAVOR ?=
.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=	--disable-strip \
			--enable-noopt
.endif

post-install:
	@mv ${WRKINST}/etc/racket ${PREFIX}/share/examples

# Since 5.3.4 if __SSE_MATH__ is defined (C_COMPILER_USES_SSE) and
# MZ_TRY_EXTFLONUMS enabled, MZ_LONG_DOUBLE (extflonum) is turned on. Also
# C_COMPILER_USES_SSE turn on MZ_USE_JIT_SSE.
# "-msse -mfpmath=sse" required by extflonum on i386.
# XXX run the test again on i386
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
CONFIGURE_ENV +=	CFLAGS="${CFLAGS} -msse -mfpmath=sse"
CONFIGURE_ARGS +=	--enable-extflonum
.endif

.include <bsd.port.mk>
