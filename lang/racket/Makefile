# $OpenBSD$

# "sconfig.h" only supports i386 and amd64 on OpenBSD
ONLY_FOR_ARCHS =	i386 amd64

COMMENT =		Scheme dialect often used for teaching programming

V =			5.2.1
REVISION =		3
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
CONFIGURE_ENV =		LDFLAGS="-pthread -lcrypto" \
			CPPFLAGS="-I${LOCALBASE}/include"

CONFIGURE_ARGS +=	--enable-shared \
			--enable-libffi \
			--enable-gracket \
			--enable-jit \
			--enable-foreign \
			--enable-places \
			--enable-float \
			--enable-docs \
			--enable-pthread \
			--enable-lt=${LIBTOOL}

# "futures" disabled because breaks "make fake".
# "backtrace" is expensive.
# http://article.gmane.org/gmane.comp.lang.racket.devel/6700
CONFIGURE_ARGS +=	--disable-futures \
			--disable-backtrace

USE_LIBTOOL =		Yes

# With the system gcc, racket ("foreign" folder) doesn't compile
# due to threads problems.
MODULES +=		converters/libiconv \
			gcc4

MODGCC4_VERSION =	4.6
MODGCC4_LANGS =		c
MODGCC4_ARCHS =		*

.include <bsd.port.mk>
