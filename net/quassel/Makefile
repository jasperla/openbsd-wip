# $OpenBSD: Makefile.template,v 1.78 2018/07/09 15:00:06 jca Exp $

COMMENT-main =		distributed IRC client (monolithic client)
COMMENT-client =	distributed IRC client (client)
COMMENT-common =	distributed IRC client (common files)
COMMENT-core =		distributed IRC client (core)

V =			0.12.5
DISTNAME =		quassel-${V}
PKGNAME-main =		quassel-${V}
PKGNAME-client =	quassel-client-${V}
PKGNAME-common =	quassel-common-${V}
PKGNAME-core =		quassel-core-${V}

CATEGORIES =		net

HOMEPAGE =		https://quassel-irc.org/

#MAINTAINER =		Caspar Schutijser <caspar@schutijser.com>

# GPLv2/GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main += ${WANTLIB} ${COMPILER_LIBCXX} c execinfo m z
WANTLIB-main += dbusmenu-qt5 phonon4qt5experimental qca-qt5
WANTLIB-main += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Script Qt5Sql Qt5Widgets
WANTLIB-client += ${WANTLIB} ${COMPILER_LIBCXX} c execinfo m z
WANTLIB-client += dbusmenu-qt5 phonon4qt5experimental
WANTLIB-client += Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets
WANTLIB-common =
# XXX Don't include ${WANTLIB} for WANTLIB-core on purpose; no need for phonon
WANTLIB-core += ${COMPILER_LIBCXX} c execinfo m z
WANTLIB-core += qca-qt5
WANTLIB-core += Qt5Core Qt5Network Qt5Script Qt5Sql

MASTER_SITES =		https://quassel-irc.org/pub/

EXTRACT_SUFX =		.tar.bz2

MULTI_PACKAGES =	-main -client -common -core

MODULES =		devel/cmake multimedia/phonon x11/qt5
#BUILD_DEPENDS =	???
RUN_DEPENDS-main =	${RUN_DEPENDS} \
			devel/desktop-file-utils \
			${BASE_PKGPATH},-common=${V}
RUN_DEPENDS-client =	${RUN_DEPENDS} \
			devel/desktop-file-utils \
			${BASE_PKGPATH},-common=${V}
RUN_DEPENDS-common =	x11/gtk+3,-guic
RUN_DEPENDS-core =

LIB_DEPENDS-main +=	${LIB_DEPENDS} \
			security/qca-qt5 \
			x11/dbusmenu-qt,qt5 \
			x11/qt5/qtscript
LIB_DEPENDS-client +=	${LIB_DEPENDS} \
			x11/dbusmenu-qt,qt5
LIB_DEPENDS-common +=
LIB_DEPENDS-core +=	${LIB_DEPENDS} \
			security/qca-qt5 \
			x11/qt5/qtscript

SEPARATE_BUILD =	Yes
CONFIGURE_ARGS =	-DGIT_EXECUTABLE="" \
			-DUSE_QT5:Bool=on

NO_TEST =		Yes

.include <bsd.port.mk>
