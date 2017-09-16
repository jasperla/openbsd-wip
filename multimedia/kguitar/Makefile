# $OpenBSD: Makefile,v 1.19 2017/07/26 22:45:27 sthen Exp $

COMMENT =	guitar tab editor

GH_ACCOUNT =	pavelliavonau
GH_PROJECT =	kguitar
GH_COMMIT =	a7c73491ef236134de55cbdcfc9f8cafa2a76ae1

DISTNAME =	${GH_PROJECT}-0.5.1v0

# override kf5
EXTRACT_SUFX =		.tar.gz

CATEGORIES =	multimedia

HOMEPAGE =	http://kguitar.sourceforge.net/

MAINTAINER =	Pascal Stumpf <pascal@stumpf.com>

# GPLv2+; for MusicXML copyright see licenseMusicXML.html
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Widgets Qt5Xml c m

MODULES =	devel/cmake \
		devel/kf5

RUN_DEPENDS +=	devel/desktop-file-utils \
		devel/gettext \
		x11/gtk+3,-guic

BUILD_DEPENDS +=	devel/kf5/kdoctools \
			devel/kf5/kconfig \
			devel/kf5/ki18n \
			devel/kf5/kparts \
			devel/gettext-tools

PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
