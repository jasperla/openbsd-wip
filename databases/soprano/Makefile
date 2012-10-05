# $OpenBSD: Makefile,v 1.6 2010/11/15 00:22:54 espie Exp $

SHARED_ONLY =	Yes
COMMENT =	RDF framework
CATEGORIES =	databases devel textproc sysutils

SHARED_LIBS =	soprano                   1.0 # 1.0
SHARED_LIBS +=	sopranoclient             1.0 # 1.0
SHARED_LIBS +=	sopranoindex              1.0 # 1.0
SHARED_LIBS +=	sopranoserver             1.0 # 1.0

HOMEPAGE =	http://soprano.sourceforge.net/
DISTNAME =	soprano-2.8.0
EXTRACT_SUFX =	.tar.bz2
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=soprano/}

# GPL/LGPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		x11/kde4
MODKDE4_USE =

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS = 	textproc/clucene \
	    	databases/iodbc \
		textproc/raptor

WANTLIB =  c m stdc++
WANTLIB += lib/qt4/QtCore lib/qt4/QtDBus lib/qt4/QtNetwork lib/qt4/QtXml
WANTLIB += clucene-core iodbc raptor2

CONFIGURE_STYLE =	cmake

# No Java, thanks
CONFIGURE_ARGS =	-DSOPRANO_DISABLE_SESAME2_BACKEND:Bool=Yes \
			-DSOPRANO_BUILD_TESTS:Bool=Yes

REGRESS_DEPENDS =		databases/virtuoso \
				x11/dbus
REGRESS_IS_INTERACTIVE =	X11

post-extract:
	cd ${WRKDIST}/cmake/modules && \
		rm FindQt4.cmake MacroPushRequiredVars.cmake

.include <bsd.port.mk>
