# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	 Backup a github user or organization

MODPY_EGG_VERSION =	0.13.2
DISTNAME =		python-githup-backup-${MODPY_EGG_VERSION}
PKGNAME =	githup-backup-${MODPY_EGG_VERSION}

GH_ACCOUNT =	josegonzalez
GH_PROJECT =	python-github-backup
GH_TAGNAME =	${MODPY_EGG_VERSION}

CATEGORIES =	devel

HOMEPAGE =	https://github.com/josegonzalez/python-github-backup

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_2}

.include <bsd.port.mk>
