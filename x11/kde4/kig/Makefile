# $OpenBSD$

COMMENT =	geometric constructions explorer for KDE
DISTNAME =	kig-${MODKDE_VERSION}

MODULES =	lang/python

LIB_DEPENDS += 	x11/kde4/libs

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/kde4/runtime

WANTLIB += c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kcmutils kdecore kdeui kemoticons kidletime kio kparts
WANTLIB += kprintutils kutils nepomuk nepomukutils soprano

post-patch:
	${SUBST_CMD} ${WRKSRC}/pykig/pykig.py

.include <bsd.port.mk>
