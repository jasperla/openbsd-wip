# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

V =			1.0
MULTI_PACKAGES =	-main -ocaml -java

PKGNAME-main =		ppl-${V}
PKGNAME-ocaml =		ppl-ocaml-${V}
PKGNAME-java =		ppl-java-${V}

COMMENT-main =		numerical abstractions library and tools
COMMENT-ocaml =		Ocaml bindings for PPL numerical abstractions library
COMMENT-java =		Java bindings for PPL numerical abstractions library

DISTNAME =		ppl-${V}

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
MODJAVA_JRERUN =	Yes

WANTLIB =		c glpk gmp gmpxx m stdc++ z

MASTER_SITES =		ftp://ftp.cs.unipr.it/pub/ppl/releases/1.0/

BUILD_DEPENDS +=	${MODOCAML_BUILD_DEPENDS} \
			${MODJAVA_BUILD_DEPENDS} \
			devel/ocaml-mlgmp

LIB_DEPENDS =		devel/gmp \
			devel/glpk
LIB_DEPENDS-ocaml =	devel/ocaml-mlgmp \
			devel/glpk

RUN_DEPENDS-java =	${MODJAVA_RUN_DEPENDS}

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
USE_GTAR =		Yes # or make clean fails

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-interfaces=c,cxx,ocaml,java \
			--with-java=${JAVA_HOME}
CONFIGURE_ENV +=	CPPFLAGS=-I${LOCALBASE}/include
CONFIGURE_ENV +=	LDFLAGS=-L${LOCALBASE}/lib

#NO_REGRESS =		Yes

post-install:
	-# Put Ocaml stuff in the right place
	${INSTALL_DATA_DIR} ${WRKINST}/${TRUEPREFIX}/lib/ocaml/site-lib/ppl
	mv ${WRKINST}/${TRUEPREFIX}/lib/ppl/ppl_ocaml* \
		${WRKINST}/${TRUEPREFIX}/lib/ocaml/site-lib/ppl/
	mv ${WRKINST}/${TRUEPREFIX}/lib/ppl/libppl_ocaml.a \
		${WRKINST}/${TRUEPREFIX}/lib
	-# Put Java stuff in the right place
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR}
	mv ${WRKINST}/${TRUEPREFIX}/lib/ppl/ppl_java.jar ${MODJAVA_JAR_DIR}
	mv ${WRKINST}/${TRUEPREFIX}/lib/ppl/libppl_java.la \
		${WRKINST}/${TRUEPREFIX}/lib
	mv ${WRKINST}/${TRUEPREFIX}/lib/ppl/libppl_java.so \
		${WRKINST}/${TRUEPREFIX}/lib
	-# Remove the now empty dir
	rmdir ${WRKINST}/${TRUEPREFIX}/lib/ppl/

# To test the Ocaml binding:
# git clone https://github.com/vext01/opplr
# Just run 'make' (or 'make opplr' if non-native arch)

# To test the java binding:
# cd /usr/ports/pobj/ppl-1.0/ppl-1.0/interfaces/Java/tests
# javac -classpath /usr/local/share/java/classes/ppl_java.jar *.java
# java -classpath /usr/local/share/java/classes/ppl_java.jar:. C_Polyhedron_test1

.include <bsd.port.mk>
