# $OpenBSD: Makefile.template,v 1.90 2021/02/25 21:59:27 sthen Exp $
#ONLY_FOR_ARCHS =	???
#NOT_FOR_ARCHS =	???
#COMES_WITH =		???
#BROKEN =		reason
COMMENT =		FM synthesizer for ADLMIDI with OPL3 chip emulation
# COMMENT-foo =	???	for multi packages
#MODPY_EGG_VERSION =	???
#MODGO_MODNAME =	github.com/test/app
#MODGO_VERSION =	0.1.1
V =		1.0.2
DISTNAME =	ADLplug-${V}
PKGNAME =	${DISTNAME:L}
#PKGNAME =	???
#PKGNAME-foo =	???	for multi packages
#GH_ACCOUNT =	jpcima
#GH_PROJECT =	ADLplug
#GH_TAGNAME =	v1.0.2
#PKGNAME =	${DISTNAME:L}
#GH_COMMIT =	abab123456789abacafeabab123123b1e4ble4bl
#SHARED_LIBS =	???	0.0
CATEGORIES =	audio
#HOMEPAGE =	???	URL
#MAINTAINER =		???
PERMIT_PACKAGE =	Yes
#PERMIT_DISTFILES =	Yes | Reason if No
#WANTLIB =		???
MASTER_SITES =		https://github.com/jpcima/ADLplug/releases/download/v${V}/
#MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=subdir/}
#MASTER_SITES =		${MASTER_SITE_foo:=subdir/}
#MASTER_SITES0 =
#DISTFILES =		???
#EXTRACT_ONLY =		???
EXTRACT_SUFX =		.tar.xz
#FIX_CRLF_FILES =	???
#DIST_SUBDIR =		???
#PATCHFILES =		???
#PATCH_DIST_STRIP =	-p0
#COMPILER =		base-clang ports-gcc base-gcc
#COMPILER =		base-clang ports-gcc
#COMPILER_LANGS =	c
MODULES =		devel/cmake
#MODPY_PI =		Yes
#MODPY_SETUPTOOLS =	Yes
#MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
#MODGO_MODULES =	modulename version
#MODGO_MODFILES =	modulename version
BUILD_DEPENDS =		devel/fmt
#RUN_DEPENDS =		???
LIB_DEPENDS =		audio/jack \
			audio/liblo
#TEST_DEPENDS =		???
#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#TEST_FLAGS =		???
#SEPARATE_BUILD =	Yes (build in a directory other than WRKSRC)
#SEPARATE_BUILD =	flavored (distinct flavors may share a common WRKSRC)
#USE_GMAKE =		Yes
#USE_GROFF =		Yes
#USE_LIBTOOL=		gnu
#CONFIGURE_STYLE =	
#CONFIGURE_SCRIPT =	??? (if other than configure)
CONFIGURE_ARGS =	-DADLplug_USE_SYSTEM_FMT=ON
#CONFIGURE_ENV =	???
# DEBUG_CONFIGURE_ARGS =	???
# DEBUG_PACKAGES = ${BUILD_PACKAGES}
#AUTOCONF_VERSION =	??? (defaults to 2.13)
#AUTOMAKE_VERSION =	??? (defaults to 1.4)
#MODGNU_CONFIG_GUESS_DIRS = ??? (defaults to ${WRKSRC})
#IS_INTERACTIVE =		Yes
#TEST_IS_INTERACTIVE =		Yes
#FLAVORS =	1 2 3 a b
#FLAVOR ?=
#CHOICE = ${FLAVOR:Na:Nb}
# check that CHOICE is 1 OR 2 OR 3, or error out
#.if ${CHOICE} == "1"
# code for 1
#.elif ${CHOICE} == "2"
# code for 2
#.elif ${CHOICE} == "3"
# code for 3
#.else
#ERRORS += "Fatal: Conflicting flavor: ${FLAVOR}"
#.endif
#.if ${FLAVOR:Ma}
# code for a
#.endif
#.if ${FLAVOR:Mb}
# code for b
#.endif
#NO_BUILD =		Yes
#NO_TEST =		Yes
#CFLAGS =		???
#LDFLAGS =		???
#MAKE_FILE =		???
#PKG_ARCH =		??? (* for arch-independent packages)
#WRKDIST =		??? if other than ${WRKDIR}/${DISTNAME}
#WRKSRC =		??? if other than ${WRKDIST}
#WRKBUILD =		??? if other than ${WRKSRC}
#WRKCONF =		??? if other than ${WRKBUILD}
#ALL_TARGET =		???
#INSTALL_TARGET =	???
#TEST_TARGET =		???
#BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
#			${MODGNU_AUTOMAKE_DEPENDS} \
#			devel/libtool
#do-gen:
#	cd ${WRKSRC}; ${AUTOCONF_ENV} ./autogen.sh
.include <bsd.port.mk>
