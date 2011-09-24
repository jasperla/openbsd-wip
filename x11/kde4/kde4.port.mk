# $OpenBSD$

SHARED_ONLY ?=		Yes
ONLY_FOR_ARCHS ?=	${GCC4_ARCHS}

VERSION ?=		4.7.1
CATEGORIES ?=		x11 x11/kde4

SEPARATE_BUILD ?=	flavored

DIST_SUBDIR ?=		kde

EXTRACT_SUFX ?=		.tar.bz2
MASTER_SITES ?=		${MASTER_SITE_KDE:=stable/${VERSION}/src/}
PORTHOME ?=		${WRKDIR}

FLAVOR ?=



# MODKDE4_RESOURCES: Yes/No
# Default: No
# If enabled, disable Qt and KDE dependencies, and set PKG_ARCH=*,
# ignoring MODKDE4_UI, MODKDE4_DEPS_STD and MODKDE4_DEPS_PIM. Also,
# "debug" FLAVOR will not be added to FLAVORS.
#
# MODKDE4_UI: Yes/No
# Default: Yes
# If enabled, adds typical dependencies for KDE UI applications.
#
# MODKDE4_DEPS: Libs/Standard/None [PIM]
# Default: Standard
#   - Set to "Libs" for ports that don't need anything except
#     kdelibs (probably ones providing only libraries themself).
#   - Set to "Standard" for ports which depend on base KDE libraries and
#     runtime components.
#   - Set to "None" for stuff that is a prerequisite for kdelibs
#     and/or kde-runtime.
#   - Add "PIM" when dependencies on pimlibs (and pim-runtime for "Standard"
#     ports) are also required.

MODKDE4_RESOURCES ?=	No
MODKDE4_UI ?=		Yes
MODKDE4_DEPS ?=		Standard

MODKDE4_BUILD_DEPENDS =	x11/kde4/automoc
MODKDE4_LIB_DEPENDS =	
MODKDE4_RUN_DEPENDS =	

# Small hack for more compact compares later
.if ${MODKDE4_DEPS:L:Mstandard}
MODKDE4_DEPS +=		Libs
.endif


.if ${MODKDE4_RESOURCES:L} != "no"
.   if ${MODKDE4_UI:L} != "no"
MODKDE4_RUN_DEPENDS +=	devel/desktop-file-utils
.   endif

.   if ${MODKDE4_DEPS:L:Mlibs}
MODKDE4_LIB_DEPENDS +=	x11/kde4/libs
.       if ${MODKDE4_DEPS_PIM:L:Mpim}
MODKDE4_LIB_DEPENDS +=	x11/kde4/pimlibs
.       endif

.       if ${MODKDE4_DEPS_PIM:L:Mstandard}
MODKDE4_RUN_DEPENDS +=	x11/kde4/runtime
.           if ${MODKDE4_DEPS_PIM:L:Mpim}
MODKDE4_RUN_DEPENDS +=	x11/kde4/pim-runtime
.           endif
.       endif

.   endif

.   if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE:String=Debug
MODKDE4_CMAKE_PREFIX =	-debug
.   else
CONFIGURE_ARGS +=	-DCMAKE_BUILD_TYPE:String=Release
MODKDE4_CMAKE_PREFIX =	-release
.   endif

# NOTE: due to bugs in update-plist, plist may contain
# ${FLAVORS} instead of ${MODKDE4_CMAKE_PREFIX}.
# You've been warned.
SUBST_VARS +=		MODKDE4_CMAKE_PREFIX

.if ${MODKDE_NO_QT:L} != "no"
MODULES +=		x11/qt4
MODQT_MT ?=		Yes
MODQT_OVERRIDE_UIC ?=	No
.endif

#  ${MODKDE4_RESOURCES:L} != "no"
.endif

MODULES +=		devel/cmake

BUILD_DEPENDS +=	${MODKDE4_BUILD_DEPENDS}
LIB_DEPENDS +=		${MODKDE4_LIB_DEPENDS}
RUN_DEPENDS +=		${MODKDE4_RUN_DEPENDS}

CONFIGURE_ENV +=	QTDIR=${MODQT_LIBDIR} HOME=${WRKDIR}
