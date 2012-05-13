# $OpenBSD$

COMMENT-main =	K Desktop Environment, KDE4 bindings for running interpreters
COMMENT-java =	K Desktop Environment, KDE4 Java bindings
DISTNAME =	kross-interpreters-${MODKDE_VERSION}
PKGNAME-main =	${PKGNAME}
PKGNAME-java =	${PKGNAME:C/interpreters/java/}


MULTI_PACKAGES =	-main -java

# XXX Can't use <bsd.port.arch.mk> due to mishandling of MODULES
# causing MODKDE_VERSION to be undefined.
PSEUDO_FLAVORS =	no_java
FLAVOR ?=

WANTLIB-common =  ${WANTLIB}
WANTLIB-common += c m stdc++
WANTLIB-common += lib/qt4/QtDBus lib/qt4/QtScript lib/qt4/QtXml
WANTLIB-common += krosscore

WANTLIB-main =  ${WANTLIB-common}
WANTLIB-main += lib/qt4/QtGui
WANTLIB-main += kpty
WANTLIB-main += ${MODPY_WANTLIB}

WANTLIB-java =  ${WANTLIB-common}

MODULES =		lang/python lang/ruby

# Unported
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_FALCON:Bool=Yes

.if ${FLAVOR:Mno_java}
CONFIGURE_ARGS +=	-DBUILD_java:Bool=No
.else
MODULES +=		java
MODJAVA_VER =		1.7
MODJAVA_JRERUN =	Yes
.endif

LIB_DEPENDS-main =	${LIB_DEPENDS}

RUN_DEPENDS-main =	${MODPY_RUN_DEPENDS} ${MODRUBY_RUN_DEPENDS}
RUN_DEPENDS-java =	${MODJAVA_RUN_DEPENDS}

.include <bsd.port.mk>
