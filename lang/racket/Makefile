# $OpenBSD$

SHARED_ONLY =		Yes

# "sconfig.h" only supports i386 and amd64 on OpenBSD
ONLY_FOR_ARCHS =	i386 amd64

COMMENT =		scheme dialect often used for teaching programming

V =			5.3.0.900
REVISION =		1
PKGNAME =		racket-$V
#DISTNAME =		racket-$V-src-unix
DISTNAME =		plt-$V-src-unix
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

# base gcc fails on "foreign" folder (due to threads problems)
MODULES +=		converters/libiconv \
			gcc4

MODGCC4_VERSION =	4.6
MODGCC4_LANGS =		c
MODGCC4_ARCHS =		*

# XXX: it seems gtk+2 would merely be a BUILD/RUN_DEPENDS, need to check
LIB_DEPENDS =		devel/libffi

WANTLIB += GL GLU X11 Xdamage Xext Xfixes Xxf86vm c crypto drm
WANTLIB += ffi m pthread stdc++ xcb

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

CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -pthread -lcrypto -lGLU -lGL" \
			CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include -DMZ_USE_JIT_SSE"

FLAVORS =	noopt
FLAVOR?=

# Racket removes the symbols by default.
.if ${FLAVOR} == "noopt"
CONFIGURE_ARGS +=	--enable-noopt
.endif

# -- Racket with futures disabled. 5.2 vs 5.3 --
# Racket 5.2 (with futures disabled) compiles OK with the default limits of the
# shell but for Racket 5.3 I need increase the limits. These problems occur
# only when this port is compiled with sudo, when is compiled from the root
# account all is OK.
#
# -- Racket + futures crash because the various make jobs --
# It's necessary to use only one job for the make install. Racket uses various
# jobs by default when futures is enabled, so Racket reaches the limits again
# and crash.
do-install:
	@cd ${WRKBUILD} && ulimit -s 8192 && ${SETENV} ${MAKE_ENV} \
		PLT_SETUP_OPTIONS="-j 1" ${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} \
		-f ${MAKE_FILE} ${FAKE_TARGET}

.include <bsd.port.mk>
