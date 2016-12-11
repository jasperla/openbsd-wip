# $OpenBSD$

COMMENT =	KDE advanced text editor
DISTNAME =	ktouch-${VERSION}
CATEGORIES =	textproc

VERSION =	16.08.3

WANTLIB += ICE QtDBus QtDeclarative QtGui QtNetwork QtOpenGL QtScript
WANTLIB += QtSql QtSvg QtXml QtXmlPatterns SM X11 Xext c m pthread
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeclarative ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/plasma xkbfile

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_ARGS +=	-DCMAKE_POLICY_DEFAULT_CMP0064=OLD \
			-DCMAKE_POLICY_DEFAULT_CMP0059=OLD \
			-DCMAKE_POLICY_DEFAULT_CMP0054=OLD

TEST_IS_INTERACTIVE =	X11

PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
