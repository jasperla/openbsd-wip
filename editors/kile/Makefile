# $OpenBSD: Makefile,v 1.16 2018/07/01 18:33:35 espie Exp $

COMMENT =	user-friendly TeX/LaTex editor for KDE

CATEGORIES =	editors

HOMEPAGE =	http://kile.sourceforge.net/

DISTNAME =	kile-2.9.92

MASTER_SITES =  ${MASTER_SITE_SOURCEFORGE:=kile/}
EXTRACT_SUFX =	.tar.bz2

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	devel/kf5 \
		multimedia/phonon

BUILD_DEPENDS =	devel/gettext-tools

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		print/texlive/base \
		x11/gtk+3,-guic \
		x11/kde-applications/kate

LIB_DEPENDS +=	devel/kf5/khtml \
		x11/kde-applications/okular

.include <bsd.port.mk>
