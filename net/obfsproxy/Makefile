# $OpenBSD$

COMMENT =		obfuscate Tor traffic

MODPY_EGG_VERSION =	0.2.13
DISTNAME =		obfsproxy-${MODPY_EGG_VERSION}

CATEGORIES =		net

HOMEPAGE =		https://www.torproject.org/projects/obfsproxy.html.en

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# BSD-like
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
RUN_DEPENDS =		net/tor

# tries to download and install additional python modules
NO_TEST =		Yes

.include <bsd.port.mk>
