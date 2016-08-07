# $OpenBSD$

QT5NAME =		QtDeclarative
COMMENT-main =		Qt5 Quick and QML components

MULTI_PACKAGES =	-main -examples -qch -html

SHARED_LIBS =		Qt5Qml			2.0
SHARED_LIBS +=		Qt5Quick		2.0
SHARED_LIBS +=		Qt5QuickParticles	2.0
SHARED_LIBS +=		Qt5QuickTest		2.0
SHARED_LIBS +=		Qt5QuickWidgets		2.0

WANTLIB-main =  	${WANTLIB}
WANTLIB-main +=		GL Qt5Core Qt5Gui Qt5Network Qt5Sql Qt5Test Qt5Widgets
WANTLIB-main +=		c m pthread

WANTLIB-examples =	${WANTLIB}
WANTLIB-examples +=	GL Qt5Core Qt5Gui Qt5Multimedia Qt5Network Qt5Qml Qt5Quick
WANTLIB-examples +=	Qt5QuickTest Qt5QuickWidgets Qt5Sql Qt5Test Qt5Widgets
WANTLIB-examples +=	c m pthread

MODULES =		lang/python
MODPY_RUNDEP =		No

LIB_DEPENDS-examples =	${LIB_DEPENDS} \
			x11/qt5/qtmultimedia>=${VERSION:R},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

# Python is used for building, this path does not get into final packages.
pre-configure:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
