# $OpenBSD: Makefile.template,v 1.60 2010/10/24 20:41:23 ajacoutot Exp $

COMMENT =		fast, incremental CVS to Git conversion

DISTNAME =		git-cvs-0.0.1
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/ustuehler/git-cvs

MAINTAINER =		Uwe Stuehler <uwe@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://bsdx.de/openbsd/distfiles/

MODULES =		lang/python

MODPY_ADJ_FILES =	scripts/git-cvs

RUN_DEPENDS =		devel/py-rcsparse>=20090807 \
			devel/git

.include <bsd.port.mk>
