# $OpenBSD$

MODKDE4_VERSION =	4.7.1
MODKDE_VERSION =	${MODKDE4_VERSION}

# General options set by module
SHARED_ONLY ?=		Yes
ONLY_FOR_ARCHS ?=	${GCC4_ARCHS}
EXTRACT_SUFX ?=		.tar.bz2

CATEGORIES +=		x11/kde4
MODULES +=		devel/cmake
SEPARATE_BUILD ?=	flavored

# MODKDE4_RESOURCES: Yes/No
#   If enabled, disable default Qt and KDE LIB_DEPENDS and RUN_DEPENDS,
#   and set PKG_ARCH=*. Also, FLAVORS will not be touched. "libs"
#   dependencies in MODKDE4_USE (see below) will become a BUILD_DEPENDS.

MODKDE4_RESOURCES ?=	No

# MODKDE4_USE: [libs | standard] [PIM] [kross]
#   - Set to empty for stuff that is a prerequisite for kde base blocks:
#     kdelibs, kde-runtime, kdepimlibs or kdepim-runtime.
#
#   - Set to "libs" for ports that need only libs, without runtime support.
#     All options below imply "Libs". If no from "none", "libs" or
#     "standard" were specified, "libs" is implied. This is the default
#     value when MODKDE4_RESOURCES is enabled.
#
#   - Set to "standard" for ports which depend on base KDE libraries and
#     runtime components. This is the default setting until
#     MODKDE4_RESOURCES is enabled.
#
#   - Set to "PIM" that depend on KDE PIM framework.
#
#   - Add "kross" when at least some apps in package use the Kross framework.
#
# NOTE: There are no options like "Kate" or "Okular", they should be handled
#       with simple LIB_DEPENDS on corresponding packages in addition to
#       options above.
#

.if ${MODKDE4_RESOURCES:L} == "no"
MODKDE4_USE ?=		standard
.else
MODKDE4_USE ?=		libs
.endif

MODKDE4_BUILD_DEPENDS =	x11/kde4/automoc
MODKDE4_LIB_DEPENDS =
MODKDE4_RUN_DEPENDS =

FLAVOR ?=

.ifdef MODKDE_NO_QT
MODKDE4_NO_QT ?=	${MODKDE_NO_QT}
.endif

.if ${MODKDE4_USE:L:Mstandard} || ${MODKDE4_USE:L:Mpim}
MODKDE4_USE +=		libs
.endif

.if ${MODKDE4_RESOURCES:L} != "no"
PKG_ARCH ?=		*
MODKDE4_NO_QT ?=	Yes	# resources usually don't need Qt
.   if ${MODKDE4_USE:L:Mlibs}
MODKDE4_BUILD_DEPENDS +=	x11/kde4/libs
.   endif
.else
MODKDE4_NO_QT ?=	No
.   if ${MODKDE4_USE:L:Mlibs}
MODKDE4_LIB_DEPENDS +=		x11/kde4/libs
.       if ${MODKDE4_USE:L:Mpim}
MODKDE4_LIB_DEPENDS +=		x11/kde4/pimlibs
.       endif

.       if ${MODKDE4_USE:L:Mstandard}
MODKDE4_RUN_DEPENDS +=		x11/kde4/runtime
.           if ${MODKDE4_USE:L:Mpim}
MODKDE4_RUN_DEPENDS +=		x11/kde4/pim-runtime
.           endif
.       endif
.   endif    # ${MODKDE4_USE:L:Mlibs}

.   if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE:String=Debug
MODKDE4_CMAKE_PREFIX =	-debug
.   else
CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE:String=Release
MODKDE4_CMAKE_PREFIX =	-release
.   endif

# NOTE: due to bugs in make-plist, plist may contain
# ${FLAVORS} instead of ${MODKDE4_CMAKE_PREFIX}.
# You've been warned.
SUBST_VARS +=		MODKDE4_CMAKE_PREFIX

FLAVORS +=	debug

# ${MODKDE4_RESOURCES:L} != "no"
.endif

MODKDE4_CONFIGURE_ENV =	HOME=${WRKDIR}
PORTHOME ?=		${WRKDIR}

MODKDE4_NO_QT ?=	No
MODKDE_NO_QT ?=		${MODKDE4_NO_QT}
.if ${MODKDE4_NO_QT:L} == "no"
MODULES +=			x11/qt4
MODQT4_OVERRIDE_UIC ?=		No
MODKDE4_CONFIGURE_ENV +=	QTDIR=${MODQT_LIBDIR}
.endif

MODKDE_BUILD_DEPENDS =	${MODKDE4_BUILD_DEPENDS}
MODKDE_LIB_DEPENDS =	${MODKDE4_LIB_DEPENDS}
MODKDE_RUN_DEPENDS =	${MODKDE4_RUN_DEPENDS}
MODKDE_CONFIGURE_ENV =	${MODKDE4_CONFIGURE_ENV}

BUILD_DEPENDS +=	${MODKDE_BUILD_DEPENDS}
LIB_DEPENDS +=		${MODKDE_LIB_DEPENDS}
RUN_DEPENDS +=		${MODKDE_RUN_DEPENDS}
CONFIGURE_ENV +=	${MODKDE_CONFIGURE_ENV}
