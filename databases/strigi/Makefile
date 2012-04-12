# $OpenBSD: Makefile,v 1.13 2011/07/07 01:06:59 ajacoutot Exp $

SHARED_ONLY =	Yes
COMMENT =	document indexer
CATEGORIES =	databases devel textproc sysutils

HOMEPAGE =	http://strigi.sourceforge.net
DISTNAME =	strigi-0.7.7
REVISION =	2

MASTER_SITES =	http://spacehopper.org/mirrors/ \
		http://www.ohvost.ru/dnl/kde/src/

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

SHARED_LIBS +=  searchclient       1.1 # .0.5
SHARED_LIBS +=  streamanalyzer     1.1 # .0.5
SHARED_LIBS +=  streams            1.1 # .0.5
SHARED_LIBS +=  strigihtmlgui      1.1 # .0.5
SHARED_LIBS +=  strigiqtdbusclient 1.1 # .0.5

BUILD_DEPENDS =	devel/cppunit \
		devel/boost

LIB_DEPENDS =	archivers/bzip2 \
		graphics/exiv2 \
		graphics/ffmpeg \
		sysutils/gamin \
		textproc/clucene>=0.9.21 \
		textproc/libxml \
		x11/qt4 \
		x11/dbus

WANTLIB += bz2 c clucene>=1 dbus-1 exiv2 \
	lib/qt4/QtCore lib/qt4/QtDBus lib/qt4/QtGui \
	fam m pthread stdc++ xml2 z avcodec avformat avutil swscale

MODULES +=		devel/cmake \
			converters/libiconv
CONFIGURE_STYLE =	cmake

# Not ported
CONFIGURE_ARGS =	-DENABLE_LOG4CXX:Bool=No

# Depends on Java
CONFIGURE_ARGS +=	-DENABLE_REGENERATEXSD:Bool=No

.include <bsd.port.mk>
