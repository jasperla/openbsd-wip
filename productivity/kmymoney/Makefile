# $OpenBSD$
COMMENT =		accounting for KDE 4
CATEGORIES =		productivity x11
HOMEPAGE =		http://kmymoney2.sourceforge.net
MAINTAINER =		Vadim Zhukov <persgray@gmail.com>
VERSION =		4.6.3
DISTNAME =		kmymoney-${VERSION}

SHARED_LIBS =		kmymoney		0.0

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

#WANTLIB =		???

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=kmymoney2/KMyMoney-KDE4/${VERSION}/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/kde4
MODKDE4_USE =		pim

BUILD_DEPENDS =		devel/doxygen \
			misc/shared-mime-info

RUN_DEPENDS =		misc/shared-mime-info

LIB_DEPENDS =		devel/boost \
			devel/libofx>=0.9.4 \
			productivity/libalkimia \
			textproc/libical

#REGRESS_DEPENDS =	???

CONFIGURE_ARGS =	-DENABLE_KBANKING:Bool=No \
			-DUSE_HTML_HANDBOOK:Bool=Yes \
			-DUSE_DEVELOPER_DOC:Bool=Yes \
			-DUSE_QT_DESIGNER:Bool=Yes

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#REGRESS_FLAGS =	???

#REGRESS_IS_INTERACTIVE =	Yes
NO_REGRESS =		Yes
#REGRESS_TARGET =	???

.include <bsd.port.mk>
