# $OpenBSD: Makefile,v 1.13 2011/07/07 01:06:59 ajacoutot Exp $

COMMENT =	document indexer
CATEGORIES =	databases devel textproc sysutils

HOMEPAGE =	https://projects.kde.org/projects/kdesupport/strigi/
DISTNAME =	strigi-0.7.7pl1
SHARED_ONLY =	Yes

MASTER_SITES =	http://malcolm.ecentrum.hu/distfiles/ \
		http://spacehopper.org/mirrors/ \
		http://www.ohvost.ru/dnl/kde/src/

# LGPLv2+
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

SHARED_LIBS +=  searchclient       1.2 # .0.5
SHARED_LIBS +=  streamanalyzer     1.2 # .0.5
SHARED_LIBS +=  streams            1.2 # .0.5
SHARED_LIBS +=  strigihtmlgui      1.2 # .0.5
SHARED_LIBS +=  strigiqtdbusclient 1.2 # .0.5

BUILD_DEPENDS =	devel/cppunit \
		devel/boost

LIB_DEPENDS =	archivers/bzip2 \
		graphics/exiv2 \
		graphics/ffmpeg \
		sysutils/gamin \
		textproc/clucene>=2.3 \
		textproc/libxml \
		x11/dbus

WANTLIB =  lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += bz2 c clucene-core clucene-shared dbus-1 exiv2 fam m pthread
WANTLIB += stdc++ xml2 z avcodec avformat avutil swscale

MODULES =		devel/cmake \
			converters/libiconv \
			x11/qt4

# Not ported
CONFIGURE_ARGS =	-DENABLE_LOG4CXX:Bool=No

# Depends on Java
CONFIGURE_ARGS +=	-DENABLE_REGENERATEXSD:Bool=No

.include <bsd.port.mk>
