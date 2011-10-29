# $OpenBSD$

SHARED_ONLY ?=	Yes
CATEGORIES +=	multimedia devel
PKGNAME ?=	${DISTNAME:C/-backend//}

FLAVORS =       debug
FLAVOR ?=

# LGPL 2.1
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes

EXTRACT_SUFX ?=	.tar.bz2

MODULES =		devel/cmake \
			multimedia/phonon

MODPHONON_PLUGIN_DEPS =	No

BUILD_DEPENDS +=	x11/kde4/automoc

SEPARATE_BUILD ?=	flavored

CONFIGURE_ARGS +=	-DPHONON_BUILDSYSTEM_DIR:String=${LOCALBASE}/share/phonon-buildsystem

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=       -DCMAKE_BUILD_TYPE:String=Debug
.else
CONFIGURE_ARGS +=       -DCMAKE_BUILD_TYPE:String=Release
.endif
