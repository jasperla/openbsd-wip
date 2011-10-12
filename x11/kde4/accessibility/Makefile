# $OpenBSD$

COMMENT =		K Desktop Environment, accessibility
DISTNAME =		kdeaccessibility-${MODKDE_VERSION}

SHARED_LIBS +=	kttsd		4.0

MODKDE4_USE =	libs

WANTLIB += c m pthread stdc++
WANTLIB += ICE SM X11 Xext Xtst
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kde3support kcmutils kdecore kdeui kemoticons kidletime kio
WANTLIB += kparts kprintutils kutils nepomuk nepomukutils phonon>=6
WANTLIB += soprano
WANTLIB += speechd

LIB_DEPENDS =	audio/speech-dispatcher

# USE_GROFF =	Yes

.include <bsd.port.mk>
