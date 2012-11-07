# $OpenBSD$
COMMENT =		accounting for KDE 4
CATEGORIES =		productivity x11
HOMEPAGE =		http://kmymoney2.sourceforge.net
MAINTAINER =		Vadim Zhukov <persgray@gmail.com>
VERSION =		4.6.3
DISTNAME =		kmymoney-${VERSION}
REVISION =		0

SHARED_LIBS =		kmm_kdchart		0.0
SHARED_LIBS +=		kmm_mymoney		0.0
SHARED_LIBS +=		kmm_plugin		0.0
SHARED_LIBS +=		kmm_widgets		0.0

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =  lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSql
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml alkimia assuan
WANTLIB += c gmp gpg-error gpgme++-pthread gpgme-pthread ical
WANTLIB += icalss iconv intl kabc kcmutils kdeui kemoticons kfile
WANTLIB += kholidays khtml kidletime kio kjs kparts kprintutils
WANTLIB += kresources kutils m nepomuk nepomukutils ofx osp phonon_s
WANTLIB += pthread qgpgme soprano stdc++ z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=kmymoney2/KMyMoney-KDE4/${VERSION}/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/kde4
MODKDE4_USE =		pim

BUILD_DEPENDS =		devel/doxygen \
			misc/shared-mime-info

RUN_DEPENDS =		devel/boost \
			misc/shared-mime-info

LIB_DEPENDS =		devel/libofx>=0.9.4 \
			productivity/libalkimia \
			textproc/libical

#REGRESS_DEPENDS =	???

CONFIGURE_ARGS =	-DENABLE_KBANKING:Bool=No \
			-DUSE_HTML_HANDBOOK:Bool=Yes \
			-DUSE_DEVELOPER_DOC:Bool=Yes \
			-DUSE_QT_DESIGNER:Bool=No

#REGRESS_FLAGS =	???
#REGRESS_IS_INTERACTIVE =	Yes
#NO_REGRESS =		Yes

.include <bsd.port.mk>
