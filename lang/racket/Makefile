# $OpenBSD$

BROKEN-i386 =		segfault in gui-debugger due to bug in pixman
DPB_PROPERTIES =	parallel
SHARED_ONLY =		Yes

# "sconfig.h" only supports i386 and amd64 on OpenBSD
ONLY_FOR_ARCHS =	i386 amd64

COMMENT =		descendant of scheme with IDE and teaching resources

V =			5.3.3
PKGNAME =		racket-$V
# The project uses racket-* for stable and plt-* for development releases
DISTNAME =		racket-$V-src-unix
CATEGORIES =		lang
HOMEPAGE =		http://racket-lang.org/
MAINTAINER =		Juan Francisco Cantero Hurtado <iam@juanfra.info>

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://download.racket-lang.org/installers/${V}/racket/ \
			http://www.eecs.northwestern.edu/racket/${V}/racket/ \
			http://www.cs.utah.edu/plt/installers/${V}/racket/ \
			http://mirror.csclub.uwaterloo.ca/racket/racket-installers/${V}/racket/ \
			http://mirror.informatik.uni-tuebingen.de/mirror/racket/${V}/racket/ \
			http://racket.infogroep.be/${V}/racket/ \
			http://pre.racket-lang.org/release/installers/ \
			http://download.tuxfamily.org/jod/lang/racket/
EXTRACT_SUFX =		.tgz

# base gcc fails on "foreign" folder due to threads problems
MODULES +=		converters/libiconv \
			gcc4

MODGCC4_VERSION =	4.6
MODGCC4_LANGS =		c
MODGCC4_ARCHS =		*

# http://docs.racket-lang.org/draw/libs.html
# http://docs.racket-lang.org/gui/libs.html
# Some deps are listed in the README, other in the doc and other
# are called by ffi.
LIB_DEPENDS =		devel/libffi
BUILD_DEPENDS =		graphics/cairo \
			devel/pango \
			graphics/jpeg
RUN_DEPENDS =		x11/gtk+2 \
			x11/gtkglext \
			devel/libunique \
			databases/iodbc,-main

WANTLIB += GL GLU X11 Xdamage Xext Xfixes Xxf86vm c crypto drm cairo png jpeg
WANTLIB += ffi m pthread stdc++ xcb pango-1.0 pangocairo-1.0

WRKDIST =		${WRKDIR}/racket-$V
WRKSRC =		${WRKDIST}/src

NO_REGRESS =		Yes
VMEM_WARNING =		Yes
SEPARATE_BUILD =	simple

USE_GROFF =		Yes
USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu
# --enable-libffi needs LDFLAGS="-pthread"
# -DMZ_USE_JIT_SSE enables use of SSE floating point
# plt-games needs GLU
# -lcurses is needed by readline (undefined symbols)
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-libffi \
			--enable-gracket \
			--enable-jit \
			--enable-foreign \
			--enable-places \
			--enable-float \
			--enable-docs \
			--enable-pthread \
			--enable-lt=${LIBTOOL} \
			--enable-futures
# "backtrace" is expensive.
# http://article.gmane.org/gmane.comp.lang.racket.devel/6700
CONFIGURE_ARGS +=	--disable-backtrace

CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include \
			-DMZ_USE_JIT_SSE"

# It's necessary to use only one job for "make install". Racket uses various
# jobs by default when futures is enabled. Racket will crash with more than
# one job.
do-install:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} \
		PLT_SETUP_OPTIONS="-j ${MAKE_JOBS}" ${MAKE_PROGRAM} \
		${ALL_FAKE_FLAGS} -f ${MAKE_FILE} ${FAKE_TARGET}

.include <bsd.port.mk>
