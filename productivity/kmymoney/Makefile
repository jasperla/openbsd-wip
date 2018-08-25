# $OpenBSD: Makefile,v 1.26 2018/07/01 18:33:37 espie Exp $
COMMENT =		accounting for KDE 5

HOMEPAGE =		https://kmymoney.org/

VERSION =		5.0.1
DISTNAME =		kmymoney-${VERSION}

CATEGORIES =		productivity x11

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kmymoney/${VERSION}/src/}

MODULES =		devel/kf5 \
			lang/python

BUILD_DEPENDS =		devel/boost \
			devel/gettext-tools \
			misc/shared-mime-info

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/p5-Finance-Quote \
			misc/shared-mime-info \
			security/p5-Crypt-SSLeay \
			x11/gtk+3,-guic

LIB_DEPENDS =		devel/gwenhywfar \
			devel/kf5/kactivities \
			devel/kf5/kcmutils \
			devel/kf5/kitemmodels \
			devel/libofx \
			graphics/kdiagram \
			productivity/aqbanking \
			productivity/libalkimia \
			textproc/libical \
			security/gpgme,,-qt \
			x11/kde-applications/akonadi \
			x11/kde-applications/kcontacts \
			x11/kde-applications/kholidays \
			x11/kde-applications/kidentitymanagement \
			x11/kde-applications/kqtquickcharts

CONFIGURE_ARGS =	-DENABLE_KBANKING:Bool=Yes \
			-DUSE_QT_DESIGNER:Bool=No \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes

TEST_IS_INTERACTIVE =	X11

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/apps/kmm_weboob/weboob.py

.include <bsd.port.mk>
