# $OpenBSD$

COMMENT =	KDE 4 bindings helpers, for running interpreters
DISTNAME =	kross-interpreters-${VERSION}

FLAVORS =		no_java
FLAVOR ?=

MODULES =		lang/python lang/ruby
.if !${FLAVOR:Mno_java}
MODULES +=		java
MODJAVA_VER =		1.6+
MODJAVA_JRERUN =	Yes
.endif

LIB_DEPENDS =	x11/kde4/libs \
		${MODPY_LIB_DEPENDS}

RUN_DEPENDS =	x11/kde4/runtime

WANTLIB += c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtScript lib/qt4/QtXml
WANTLIB += kdecore kpty krosscore
WANTLIB += ${MODPY_WANTLIB}

# Unported
CONFIGURE_ARGS +=	-DBUILD_falcon:Bool=No

.if ${FLAVOR:Mno_java}
CONFIGURE_ARGS +=	-DBUILD_java:Bool=No
.endif

.include <bsd.port.mk>
