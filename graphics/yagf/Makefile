# $OpenBSD$

COMMENT =		GUI wrapper for tesseract and cuneiform
DISTNAME =		yagf-0.9.5

CATEGORIES =		graphics
HOMEPAGE =		http://symmetrica.net/cuneiform-linux/yagf-en.html
MAINTAINER =		Vadim Zhukov <zhuk@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		lib/qt4/QtGui aspell c m pthread stdc++

MASTER_SITES =		https://yagf.googlecode.com/archive/

MODULES =		devel/cmake x11/qt4

RUN_DEPENDS =		devel/desktop-file-utils \
			graphics/tesseract \
			graphics/xsane \
			poppler-utils-*|ghostscript-*:print/poppler,-utils \
			x11/gtk+3,-guic

LIB_DEPENDS =		textproc/aspell/core

CONFIGURE_ARGS =	-DCMAKE_INSTALL_PREFIX=${TRUEPREFIX}

WRKDIST =		${WRKDIR}/yagf-${DISTNAME}

.include <bsd.port.mk>
