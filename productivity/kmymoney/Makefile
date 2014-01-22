# $OpenBSD$
COMMENT =		accounting for KDE 4
CATEGORIES =		productivity x11
HOMEPAGE =		http://kmymoney2.sourceforge.net
MAINTAINER =		Vadim Zhukov <persgray@gmail.com>
VERSION =		4.6.4
DISTNAME =		kmymoney-${VERSION}

SHARED_LIBS =		kmm_kdchart		0.0
SHARED_LIBS +=		kmm_mymoney		0.0
SHARED_LIBS +=		kmm_plugin		0.0
SHARED_LIBS +=		kmm_widgets		0.0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kabc ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeui
WANTLIB += ${KDE4LIB}/kemoticons ${KDE4LIB}/kfile ${KDE4LIB}/kholidays
WANTLIB += ${KDE4LIB}/khtml ${KDE4LIB}/kidletime ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/kjs ${KDE4LIB}/kparts ${KDE4LIB}/kprintutils
WANTLIB += ${KDE4LIB}/kresources ${KDE4LIB}/kutils ${KDE4LIB}/nepomuk
WANTLIB += ${KDE4LIB}/nepomukutils
WANTLIB += c m pthread stdc++ z
WANTLIB += alkimia assuan gmp gpg-error gpgme++-pthread gpgme-pthread
WANTLIB += ical icalss ofx osp qgpgme soprano

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=kmymoney2/KMyMoney-KDE4/${VERSION}/}

MODULES =	x11/kde4 devel/gettext multimedia/phonon
MODKDE4_USE =	pim

BUILD_DEPENDS =	devel/doxygen \
		misc/shared-mime-info

RUN_DEPENDS =	devel/boost \
		misc/shared-mime-info

LIB_DEPENDS =	devel/gwenhywfar \
		devel/libofx>=0.9.4 \
		productivity/aqbanking \
		productivity/libalkimia,${MODKDE4_FLAVOR} \
		textproc/libical

CONFIGURE_ARGS =	-DENABLE_KBANKING:Bool=Yes \
			-DUSE_HTML_HANDBOOK:Bool=Yes \
			-DUSE_DEVELOPER_DOC:Bool=Yes \
			-DUSE_QT_DESIGNER:Bool=No

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
