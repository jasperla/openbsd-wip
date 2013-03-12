# $OpenBSD$

COMMENT =		module that supports the Python WSGI interface

DISTNAME =		mod_wsgi-2.3
CATEGORIES =		www

HOMEPAGE =		http://code.google.com/p/modwsgi/
MASTER_SITES =		http://modwsgi.googlecode.com/files/

MAINTAINER =		James Turner <james@bsdgroup.org>

# Apache
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		apache-module \
			lang/python
MODAPACHE_NAME =	wsgi

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-python=${MODPY_BIN}

WANTLIB =		util
LIB_DEPENDS +=		${MODPY_LIB_DEPENDS}

NO_TEST =		Yes

post-build:
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
