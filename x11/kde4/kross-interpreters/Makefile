# $OpenBSD$

COMMENT =	KDE 4 bindings helpers, for running interpreters
DISTNAME =	kross-interpreters-${MODKDE_VERSION}
REVISION =	0

FLAVORS =		no_java
FLAVOR ?=

MODULES =		lang/python lang/ruby
.if !${FLAVOR:Mno_java}
MODULES +=		java
MODJAVA_VER =		1.7
MODJAVA_JRERUN =	Yes
.endif

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtScript lib/qt4/QtXml
WANTLIB += kpty krosscore
WANTLIB += ${MODPY_WANTLIB}

LIB_DEPENDS =	${MODPY_LIB_DEPENDS}

# Unported
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_FALCON:Bool=Yes

.if ${FLAVOR:Mno_java}
CONFIGURE_ARGS +=	-DBUILD_java:Bool=No
.endif

.include <bsd.port.mk>
