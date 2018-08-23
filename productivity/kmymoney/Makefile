# $OpenBSD: Makefile,v 1.26 2018/07/01 18:33:37 espie Exp $
COMMENT =		accounting for KDE 4
CATEGORIES =		productivity x11
HOMEPAGE =		https://kmymoney.org/
MAINTAINER =		Vadim Zhukov <zhuk@openbsd.org>
VERSION =		5.0.1
DISTNAME =		kmymoney-${VERSION}

SHARED_LIBS += kmm_kdchart                      1.1 # 0.0
SHARED_LIBS += kmm_mymoney                      1.1 # 0.0
SHARED_LIBS += kmm_payeeidentifier              0.0 # 0.0
SHARED_LIBS += kmm_plugin                       1.1 # 0.0
SHARED_LIBS += kmm_widgets                      1.1 # 0.0
SHARED_LIBS += payeeidentifier_iban_bic         0.0 # 4.14
SHARED_LIBS += payeeidentifier_iban_bic_widgets 0.0 # 4.14
SHARED_LIBS += payeeidentifier_nationalAccount  0.0 # 4.14

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_KDE:=stable/kmymoney/${VERSION}/src/}

MODULES =		devel/cmake \
			devel/kf5

BUILD_DEPENDS =	devel/boost \
		devel/gettext-tools \
		misc/shared-mime-info

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/p5-Finance-Quote \
		misc/shared-mime-info \
		security/p5-Crypt-SSLeay \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/gwenhywfar>=4.13.1p3 \
		devel/libofx>=0.9.4 \
		productivity/aqbanking>=5.5.1p1 \
		productivity/libalkimia,${MODKDE4_FLAVOR}>=5

CONFIGURE_ARGS =	-DENABLE_KBANKING:Bool=Yes \
			-DUSE_HTML_HANDBOOK:Bool=Yes \
			-DUSE_DEVELOPER_DOC:Bool=Yes \
			-DUSE_QT_DESIGNER:Bool=No \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes

TEST_IS_INTERACTIVE =	X11

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/apps/kmm_weboob/weboob.py

.include <bsd.port.mk>
