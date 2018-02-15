# $OpenBSD: Makefile.template,v 1.77 2018/02/09 17:08:33 sthen Exp $

COMMENT =	gpg-encrypted git repository.

GH_ACCOUNT =	glassroom
GH_PROJECT =	git-gpg
GH_COMMIT =	260f0bee1fd6faf454be1ae94bab357caf287251

DISTNAME =	${GH_PROJECT}-2018.02.14

CATEGORIES =	devel

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		net/rsync

NO_BUILD =		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/git-gpg ${PREFIX}/bin

.include <bsd.port.mk>
