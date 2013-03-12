# $OpenBSD$

CATEGORIES +=	multimedia
PKGNAME ?=	${DISTNAME:C/-backend//}

# LGPL 2.1
PERMIT_PACKAGE_CDROM =   Yes

MODULES =		x11/kde4 multimedia/phonon
MODKDE4_USE =
MODPHONON_PLUGIN_DEPS =	No

CONFIGURE_ARGS =	-DPhonon_DIR:String=${LOCALBASE}/lib/cmake/phonon
