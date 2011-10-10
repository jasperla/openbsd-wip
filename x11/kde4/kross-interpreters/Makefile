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

LIB_DEPENDS = 	x11/kde4/libs

RUN_DEPENDS +=	x11/kde4/runtime

WANTLIB += c m stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += akonadi-kde akonadi-kmime
WANTLIB += kcmutils kdecore kdeui kdnssd kemoticons kfile khtml
WANTLIB += kidletime kio kjs knewstuff2 knewstuff3 kparts kprintutils
WANTLIB += kpty ktexteditor kutils nepomuk nepomukquery nepomukutils
WANTLIB += phonon plasma solid soprano sopranoclient sopranoserver

# Unported
CONFIGURE_ARGS +=	-DBUILD_falcon:Bool=No

.if ${FLAVOR:Mno_java}
CONFIGURE_ARGS +=	-DBUILD_java:Bool=No
.endif

.include <bsd.port.mk>
