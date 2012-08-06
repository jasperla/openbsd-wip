# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

# XXX SUBPACKAGE THIS

COMMENT =		numerical abstractions library and tools
DISTNAME =		ppl-1.0

SHARED_LIBS +=  	ppl	0.0 # 12.0
SHARED_LIBS +=  	ppl_c	0.0 # 4.0

CATEGORIES =		math
HOMEPAGE =		http://bugseng.com/products/ppl/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ocaml \
			java

MODJAVA_VER =		1.7

WANTLIB =		c glpk gmp gmpxx m stdc++

MASTER_SITES =		ftp://ftp.cs.unipr.it/pub/ppl/releases/1.0/

BUILD_DEPENDS +=	${MODOCAML_BUILD_DEPENDS} \
			${MODJAVA_BUILD_DEPENDS} \
			devel/ocaml-mlgmp
LIB_DEPENDS =		devel/gmp \
			devel/glpk
RUN_DEPENDS =		devel/ocaml-mlgmp

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
USE_GTAR =		Yes # or make clean fails

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-interfaces=c,cxx,ocaml,java \
			--with-java=${JAVA_HOME}
CONFIGURE_ENV +=	CPPFLAGS=-I${LOCALBASE}/include
CONFIGURE_ENV +=	LDFLAGS=-L${LOCALBASE}/lib

#NO_REGRESS =		Yes

.include <bsd.port.mk>
