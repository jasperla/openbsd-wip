# $OpenBSD$

COMMENT =		library for manipulation of biblical texts

MAJ =			1.6
MIN =			2
V =			${MAJ}.${MIN}
DISTNAME =		sword-${V}

# XXX keep in sync with icu4c port
ICU_V =			49.1.2

SUBST_VARS +=		V ICU_V

SHARED_LIBS +=  sword                     0.0 # 1.6

CATEGORIES =		textproc

HOMEPAGE =		http://www.crosswire.org/sword/index.jsp

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c curl icudata icui18n icuio icuuc m pthread stdc++
WANTLIB += z

MASTER_SITES =		 http://www.crosswire.org/ftpmirror/pub/sword/source/v${MAJ}/

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/swig
LIB_DEPENDS =		textproc/icu4c \
			net/curl

CONFIGURE_ARGS +=	-DCFLAGS="${CFLAGS}"

.include <bsd.port.mk>
