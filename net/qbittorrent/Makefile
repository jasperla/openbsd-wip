# $OpenBSD: Makefile,v 1.129 2018/06/29 22:16:19 espie Exp $

COMMENT =		BitTorrent client with Qt interface
VER =			4.1.2
DISTNAME =		qbittorrent-${VER}
PKGNAME =		qbittorrent-${VER}

CATEGORIES =		net
HOMEPAGE =		https://www.qbittorrent.org
MAINTAINER =		Elias M. Mariani <marianielias@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=qbittorrent/}

FLAVORS =		nox
FLAVOR ?=

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Xml boost_system
WANTLIB += boost_system-mt c m torrent-rasterbar z

MODULES +=		x11/qt5

LIB_DEPENDS +=		net/libtorrent-rasterbar \
			devel/boost
.if ${FLAVOR:Mnox}
FULLPKGNAME =		qbittorrent-nox-${VER}
COMMENT =		BitTorrent client with web interface
CONFIGURE_ARGS +=	--disable-gui
.else
WANTLIB += GL Qt5DBus Qt5Gui Qt5Svg Qt5Widgets
LIB_DEPENDS +=		x11/qt5/qtsvg
RUN_DEPENDS +=		net/GeoIP \
			lang/python/2.7 \
			x11/gtk+3,-guic
.endif

pre-install:
	${SUBST_CMD} ${WRKSRC}/conf.pri

.include <bsd.port.mk>
