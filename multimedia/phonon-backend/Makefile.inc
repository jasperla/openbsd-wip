# $OpenBSD$

SHARED_ONLY =	Yes
CATEGORIES =	multimedia devel
EXTRACT_SUFX =	.tar.bz2

# LGPL 2.1
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes

MODULES =		x11/qt4 devel/cmake

BUILD_DEPENDS +=	x11/kde4/automoc

LIB_DEPENDS +=		phonon->=4.5.0:multimedia/phonon

FLAVORS =       debug
FLAVOR ?=

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=       -DCMAKE_BUILD_TYPE:String=Debug
.else
CONFIGURE_ARGS +=       -DCMAKE_BUILD_TYPE:String=Release
.endif
