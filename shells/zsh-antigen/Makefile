# $OpenBSD: Makefile.template,v 1.78 2018/07/09 15:00:06 jca Exp $

COMMENT =	plugin manager for zsh

VERSION =	2.2.3
DISTNAME =	v${VERSION}
PKGNAME =	zsh-antigen-${VERSION}

CATEGORIES =	shells

HOMEPAGE =	https://antigen.sharats.me/

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://github.com/zsh-users/antigen/releases/download/v${VERSION}/

RUN_DEPENDS =		shells/zsh \
			devel/git

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}/antigen-2.2.3

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh-antigen
	${INSTALL_DATA} ${WRKSRC}/bin/antigen.zsh \
		${PREFIX}/share/zsh-antigen

.include <bsd.port.mk>
