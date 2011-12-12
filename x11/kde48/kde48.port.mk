# $OpenBSD$

MODKDE4_VERSION =	4.7.90
MODKDE_VERSION =	${MODKDE4_VERSION}

# General options set by module
SHARED_ONLY ?=		Yes
ONLY_FOR_ARCHS ?=	${GCC4_ARCHS}
EXTRACT_SUFX ?=		.tar.bz2

CATEGORIES +=		x11/kde48
MODULES +=		devel/cmake
CONFIGURE_STYLE ?=	cmake
SEPARATE_BUILD ?=	flavored

# MODKDE4_RESOURCES: Yes/No
#   If enabled, disable default Qt and KDE LIB_DEPENDS and RUN_DEPENDS,
#   and set PKG_ARCH=*. Also, FLAVORS will not be touched. "libs"
#   dependencies in MODKDE4_USE (see below) will become a BUILD_DEPENDS.

MODKDE4_RESOURCES ?=	No

# MODKDE4_USE: [libs | runtime] [PIM]
#   - Set to empty for stuff that is a prerequisite for kde base blocks:
#     kdelibs, kde-runtime, kdepimlibs or kdepim-runtime.
#
#   - Set to "libs" for ports that need only libs, without runtime support.
#     All options below imply "Libs". If no from "none", "libs" or
#     "runtime" were specified, "libs" is implied. This is the default
#     value when MODKDE4_RESOURCES is enabled.
#
#   - Set to "runtime" for ports which depend on base KDE libraries and
#     runtime components. This is the default setting until
#     MODKDE4_RESOURCES is enabled.
#
#   - Set to "workspace" for ports that require KDE workspace libraries.
#     This automatically implies "runtime".
#
#   - Add "PIM" when port depends on KDE PIM framework.
#
# NOTE: There are no options like "Kate" or "Okular", they should be handled
#       with simple LIB_DEPENDS on corresponding packages in addition to
#       options above.
#

.if ${MODKDE4_RESOURCES:L} == "no"
MODKDE4_USE ?=		runtime
.else
MODKDE4_USE ?=		libs
MODKDE_NO_QT ?=		Yes
.endif

_MODKDE4_USE_ALL =	libs runtime workspace pim
.for _modkde4_u in ${MODKDE4_USE:L}
.   if !${_MODKDE4_USE_ALL:M${_modkde4_u}}
ERRORS += "Fatal: unknown KDE 4 use flag: ${_modkde4_u}\n(not in ${_MODKDE4_USE_ALL})"
.   endif
.endfor
.if ${MODKDE4_USE:L} == "pim" || ${MODKDE4_USE:Mworkspace}
MODKDE4_USE +=		runtime
.endif

PKGNAME ?= ${DISTNAME}

# Force CMake which has merged KDE modules
MODKDE4_BUILD_DEPENDS =	STEM->=2.8.6:devel/cmake
MODKDE4_LIB_DEPENDS =
MODKDE4_RUN_DEPENDS =
MODKDE4_WANTLIB =

# Small hack, until automoc4 will be gone
.if !${PKGNAME:Mautomoc4-*}
MODKDE4_BUILD_DEPENDS +=	x11/kde48/automoc
.endif

FLAVOR ?=

.ifdef MODKDE_NO_QT
MODKDE4_NO_QT ?=	${MODKDE_NO_QT}
.endif

.if ${MODKDE4_USE:L:Mruntime} || ${MODKDE4_USE:L:Mpim}
MODKDE4_USE +=		libs
.endif

.if ${MODKDE4_RESOURCES:L} != "no"
PKG_ARCH ?=		*
MODKDE4_NO_QT ?=	Yes	# resources usually don't need Qt
.   if ${MODKDE4_USE:L:Mlibs}
MODKDE4_BUILD_DEPENDS +=	STEM->=${MODKDE4_VERSION}:x11/kde48/libs
.   endif
.else
MODKDE4_NO_QT ?=	No
.   if ${MODKDE4_USE:L:Mlibs}
MODKDE4_LIB_DEPENDS +=		STEM->=${MODKDE4_VERSION}:x11/kde48/libs
MODKDE4_WANTLIB +=		kdecore>=8
.       if ${MODKDE4_USE:L:Mpim}
MODKDE4_LIB_DEPENDS +=		STEM->=${MODKDE4_VERSION}:x11/kde48/pimlibs
.       endif

.       if ${MODKDE4_USE:L:Mruntime}
MODKDE4_RUN_DEPENDS +=		STEM->=${MODKDE4_VERSION}:x11/kde48/runtime
.           if ${MODKDE4_USE:L:Mpim}
MODKDE4_RUN_DEPENDS +=		STEM->=${MODKDE4_VERSION}:x11/kde48/pim-runtime
.           endif

.           if ${MODKDE4_USE:L:Mworkspace}
MODKDE4_LIB_DEPENDS +=		STEM->=${MODKDE4_VERSION}:x11/kde48/workspace
.           endif
.       endif
.   endif    # ${MODKDE4_USE:L:Mlibs}

.if ${CONFIGURE_STYLE:Mcmake}
.   if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE:String=Debug
MODKDE4_CMAKE_PREFIX =	-debug
.   else
CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE:String=Release
MODKDE4_CMAKE_PREFIX =	-release
.   endif

# Use right directories
CONFIGURE_ARGS +=	-DMAN_INSTALL_DIR=${PREFIX}/man \
			-DINFO_INSTALL_DIR=${PREFIX}/info \
			-DLIBEXEC_INSTALL_DIR=${PREFIX}/libexec

# NOTE: due to bugs in make-plist, plist may contain
# ${FLAVORS} instead of ${MODKDE4_CMAKE_PREFIX}.
# You've been warned.
SUBST_VARS +=		MODKDE4_CMAKE_PREFIX

FLAVORS +=	debug
.endif

# ${MODKDE4_RESOURCES:L} != "no"
.endif

# FIXME
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
MODKDE_WANTLIB =	${MODKDE4_WANTLIB}
MODKDE_CONFIGURE_ENV =	${MODKDE4_CONFIGURE_ENV}

BUILD_DEPENDS +=	${MODKDE_BUILD_DEPENDS}
LIB_DEPENDS +=		${MODKDE_LIB_DEPENDS}
RUN_DEPENDS +=		${MODKDE_RUN_DEPENDS}
WANTLIB +=		${MODKDE_WANTLIB}
CONFIGURE_ENV +=	${MODKDE_CONFIGURE_ENV}
