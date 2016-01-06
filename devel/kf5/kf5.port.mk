# $OpenBSD$

SHARED_ONLY ?=		Yes
MODKF5_VERSION =	5.17.0

MAINTAINER ?=		KDE porting team <openbsd-kde@googlegroups.com>

EXTRACT_SUFX ?=		.tar.xz

.if ${DISTNAME:Nextra-cmake-modules-*}
BUILD_DEPENDS +=	devel/kf5/extra-cmake-modules>=${MODKF5_VERSION}
.endif

.if empty(CONFIGURE_STYLE)
CONFIGURE_STYLE =	cmake
.endif

.if ${CONFIGURE_STYLE:Mcmake}
MODULES +=		devel/cmake

# set up default locations
CONFIGURE_ARGS += \
	-DECM_MKSPECS_INSTALL_DIR=${PREFIX}/share/kf5/mkspecs \
	-DKDE_INSTALL_LIBEXECDIR=libexec \
	-DKDE_INSTALL_QTPLUGINDIR=${MODQT_LIBDIR}/plugins \
	-DKDE_INSTALL_PLUGINDIR=${PREFIX}/lib/kf5/plugins \
	-DMAN_INSTALL_DIR=${PREFIX}/man \
	-DSHAREDSTATEDIR=/var \
	-DSYSCONFDIR=/etc

# XXX it's very strange this is off by default
CONFIGURE_ARGS +=	-DALLOW_UNDEFINED_LIB_SYMBOLS=Yes

# shut up CMake
CONFIGURE_ARGS +=	-DCMAKE_POLICY_DEFAULT_CMP0063=OLD
.endif

# make sure cmake module preceeds qt5, unless we really want qmake
MODULES +=		x11/qt5

# fix /usr/local/etc/dbus-1 and friends
MODKF5_post-install += \
 	if [ -d ${PREFIX}/etc ]; then \
		cd ${PREFIX}/etc; \
		pax -rw * ${PREFIX}/share/examples; \
		rm -Rf ${PREFIX}/etc; \
	fi;

# list of all languages supported by KDE5
ALL_LANGS +=	ar bg bs ca ca@valencia cs da de el en_GB es et eu fa fi fr
ALL_LANGS +=	ga gl he hi hr hu ia id is it ja kk km ko lt lv mr nb nds
ALL_LANGS +=	nl nn pa pl pt pt_BR ro ru sk sl sr sv tr ug uk wa
ALL_LANGS +=	zh_CN zh_TW

# do not install localized manual pages
MODKF5_post-install += \
	rm -Rf ${ALL_LANGS:S,^,${PREFIX}/man/,}

# could not use this in devel/kf5/Makefile.inc because MODKF5_VERSION
# is not set there yet
.if ${PKGPATH:Mdevel/kf5/*}
BUILD_DEPENDS :=	${BUILD_DEPENDS:Mdevel/kf5/*:C,(>=.*)?$,>=${MODKF5_VERSION},} \
			${BUILD_DEPENDS:Ndevel/kf5/*}
RUN_DEPENDS :=		${RUN_DEPENDS:Mdevel/kf5/*:C,(>=.*)?$,>=${MODKF5_VERSION},} \
			${RUN_DEPENDS:Ndevel/kf5/*}
LIB_DEPENDS :=		${LIB_DEPENDS:Mdevel/kf5/*:C,(>=.*)?$,>=${MODKF5_VERSION},} \
			${LIB_DEPENDS:Ndevel/kf5/*}
.endif
