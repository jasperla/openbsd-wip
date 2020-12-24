# $OpenBSD: Makefile,v 1.45 2020/06/09 07:14:45 jasper Exp $

COMMENT =	firewall GUI

GH_ACCOUNT =	fwbuilder
GH_PROJECT =	fwbuilder
# No proper release with CMake yet; as of 20201221:
GH_COMMIT =	1ff9a82e80aa23da247d2c496ae6587c3cb97a7e
# sync with patches/patch-cmake_VERSION_cmake (see comments there)
DISTNAME =	${GH_PROJECT}-6.0.0beta1

CATEGORIES =	net security

# GPLv2+ mostly, some code under BSD-like
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += Qt5Core Qt5Gui Qt5Network Qt5PrintSupport Qt5Widgets
WANTLIB += c crypto m netsnmp util xml2 xslt z

MODULES =	devel/cmake \
		x11/qt5

LIB_DEPENDS =	net/net-snmp \
		textproc/libxml \
		textproc/libxslt \
		x11/qt5/qtbase

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

# Requires itself to be installed for tests
TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}

CONFIGURE_ENV+=	CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib"

# 2 failures:
# instDialogInstallTest: fails because it can't catch its own background process
# FirewallDialogTest: the test seems broken because the dialog text changed
TEST_IS_INTERACTIVE =	X11

# For PLIST
SUBST_VARS +=	DISTNAME

pre-configure:
	${SUBST_CMD} ${WRKDIST}/cmake/FindNetSNMP.cmake

# gunzip all manpages, it's an hell to patch.
post-install:
	ln -sf /usr/bin/gunzip ${WRKDIR}/bin/gunzip
	cd ${PREFIX}/man/man1 && gunzip *.1.gz

.include <bsd.port.mk>
