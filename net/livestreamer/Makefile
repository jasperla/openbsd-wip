# $OpenBSD$

COMMENT =	pipe video streams into a video player
DISTNAME =	livestreamer-20130808
CATEGORIES =	net

HOMEPAGE =	http://livestreamer.tanuki.se/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD & MIT
# src/livestreamer/plugins/gomtv.py: Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://devio.us/~bcallah/source/

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	net/rtmpdump \
		security/py-crypto \
		www/py-requests

.include <bsd.port.mk>
