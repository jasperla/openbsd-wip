# $OpenBSD$

COMMENT =	DuckDuckGo from the terminal
CATEGORIES =	net

GH_ACCOUNT =	jarun
GH_PROJECT =	ddgr
GH_TAGNAME =	v1.8.1

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
MODPY_ADJ_FILES =	ddgr

RUN_DEPENDS =	www/py-urllib3${MODPY_FLAVOR} \
		x11/xsel

.include <bsd.port.mk>
