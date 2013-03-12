# $OpenBSD$

COMMENT =		obfuscate Tor traffic

DISTNAME =		obfsproxy-0.1.4

CATEGORIES =		net

HOMEPAGE =		https://www.torproject.org/projects/obfsproxy.html.en

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# BSD-like
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto event_core event_extra

MASTER_SITES =		https://archive.torproject.org/tor-package-archive/obfsproxy/

MODULES =		lang/python
MODPY_RUNDEP =		No
LIB_DEPENDS =		devel/libevent2
RUN_DEPENDS =		net/tor
TEST_DEPENDS =		lang/python/${MODPY_VERSION}

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		ax_cv_check_cflags__Werror__fPIE=no \
			ax_cv_check_ldflags__Werror__pie=no

.include <bsd.port.mk>
