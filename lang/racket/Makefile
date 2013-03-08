# $OpenBSD$

BROKEN-i386 =		segfault in gui-debugger due to bug in pixman/cairo
SHARED_ONLY =		Yes
# Racket only supports i386 and amd64 on OpenBSD
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
			http://www.cs.utah.edu/plt/installers/${V}/racket/ \
			http://mirror.csclub.uwaterloo.ca/racket/racket-installers/${V}/racket/ \
			http://mirror.informatik.uni-tuebingen.de/mirror/racket/${V}/racket/ \
			http://racket.infogroep.be/${V}/racket/ \
			http://pre.racket-lang.org/release/installers/ \
			http://pre.racket-lang.org/installers/ \
			http://download.tuxfamily.org/jod/lang/racket/
EXTRACT_SUFX =		.tgz

MODULES +=		converters/libiconv

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

# --enable-libffi needs LDFLAGS="-pthread" for detect the system ffi.
# -DMZ_USE_JIT_SSE enables use of SSE floating point in JIT.
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -pthread" \
			CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include \
			-DMZ_USE_JIT_SSE"

# It compiles racket with one job because "raco -j N" isn't useful with
# "places" disabled. http://article.gmane.org/gmane.comp.lang.racket.user/16820
do-install:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} \
		PLT_SETUP_OPTIONS="-j 1" ${MAKE_PROGRAM} \
		${ALL_FAKE_FLAGS} -f ${MAKE_FILE} ${FAKE_TARGET}

.if ${MACHINE_ARCH} == "amd64"
PKG_ARGS+=-Damd64=1 -Di386=0
.elif ${MACHINE_ARCH} == "i386"
PKG_ARGS+=-Damd64=0 -Di386=1
.endif

.include <bsd.port.mk>
