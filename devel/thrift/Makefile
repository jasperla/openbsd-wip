# $OpenBSD: Makefile.template,v 1.85 2019/09/09 19:19:05 kmos Exp $

COMMENT =	framework for scalable cross-language services development

V =		0.12.0
DISTNAME =	thrift-${V}
#SHARED_LIBS =	???	0.0

CATEGORIES =	devel

HOMEPAGE =	cmake/utilities.cmake

# Apache-2.0
PERMIT_PACKAGE =	Yes

#WANTLIB =		???

MASTER_SITES =		http://apache.mirrors.tds.net/thrift/0.12.0/

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
# Dependencies
BUILD_DEPENDS =		devel/boost
#RUN_DEPENDS =		???
#LIB_DEPENDS =		???
#TEST_DEPENDS =		???

#MAKE_FLAGS =		???
#MAKE_ENV =		???
#FAKE_FLAGS =		???
#TEST_FLAGS =		???

USE_GMAKE =		Yes

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--with-boost=${LOCALBASE} \
			--with-qt4=no \
			--with-qt5=no \
			--with-csharp=no \
			--with-java=no \
			--with-erlang=no \
			--with-nodejs=no \
			--with-nodets=no \
			--with-lua=no \
			--with-python=no \
			--with-php=no \
			--with-php_extension=no \
			--with-dart=no \
			--with-ruby=no \
			--with-haskell=no \
			--with-go=no \
			--with-rs=no \
			--with-cl=no \
			--with-haxe=no \
			--with-dotnetcore=no \
			--with-d=no

.include <bsd.port.mk>
