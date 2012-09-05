# $OpenBSD$

# "sconfig.h" only supports i386 and amd64 on OpenBSD
ONLY_FOR_ARCHS =	i386 amd64

COMMENT =		Scheme dialect often used for teaching programming

V =			5.3
PKGNAME =		racket-$V
DISTNAME =		racket-$V-src-unix
CATEGORIES =		lang
HOMEPAGE =		http://racket-lang.org
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
			http://russell.cs.bilgi.edu.tr/racket-installers/${V}/racket/ \
			http://racket.infogroep.be/${V}/racket/

NO_REGRESS =		Yes
VMEM_WARNING =		Yes

# Dependencies listed within src/README and the output of configure
LIB_DEPENDS =		devel/libffi \
			x11/gtk+2 \
			devel/pango \
			graphics/cairo
# "WANTLIB" reviewed by hand, "lib-depends-check" doesn't help.
WANTLIB =		c m pthread ffi crypto

EXTRACT_SUFX =		.tgz
WRKDIST =		${WRKDIR}/racket-$V
WRKSRC =		${WRKDIST}/src
SEPARATE_BUILD =	simple
CONFIGURE_STYLE =	gnu

# --enable-libffi needs LDFLAGS="-pthread"
# gettext support needs CPPFLAGS="-I${LOCALBASE}/include"
# -DMZ_USE_JIT_SSE enables use of SSE floating point
CONFIGURE_ENV =		LDFLAGS="-pthread -lcrypto" \
			CPPFLAGS="-I${LOCALBASE}/include -DMZ_USE_JIT_SSE"

CONFIGURE_ARGS +=	--enable-shared \
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

# Racket removes the symbols by default.
# FIXME It doesn't work. I'm doing something wrong.
.ifdef DEBUG
CONFIGURE_ARGS +=	--enable-noopt
.endif

USE_LIBTOOL =		Yes

# With the system gcc, racket ("foreign" folder) doesn't compile
# due to threads problems.
MODULES +=		converters/libiconv \
			gcc4

MODGCC4_VERSION =	4.6
MODGCC4_LANGS =		c
MODGCC4_ARCHS =		*

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
	@cd ${WRKBUILD} && ulimit -s 8192 && PLT_SETUP_OPTIONS="-j 1" make install

.include <bsd.port.mk>
