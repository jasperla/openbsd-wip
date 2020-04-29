# $OpenBSD: Makefile,v 1.14 2020/03/15 18:20:25 abieber Exp $

COMMENT =		replacement for GNU readline() for UNIX

SHARED_LIBS +=  editline                  0.0 # 1.2

V =			1.17.1
DISTNAME =		editline-$V

CATEGORIES =		devel

HOMEPAGE =		https://github.com/troglobit/editline

# GPLv2 only ??
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/troglobit/editline/releases/download/${V}/

USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoconf

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

#MODULES =		devel/cmake \
#			lang/python

#BUILD_DEPENDS =		devel/gettext,-tools \
#			textproc/py-sphinx
#
#LIB_DEPENDS =		devel/pcre2 \
#			devel/gettext,-runtime
#
#RUN_DEPENDS =		misc/gnugetopt

MAKE_FLAGS =		V=1

.include <bsd.port.mk>
