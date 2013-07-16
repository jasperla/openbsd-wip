# $OpenBSD: Makefile.template,v 1.66 2013/06/04 22:58:11 sthen Exp $

COMMENT =		framework to enhance bash completion

DISTNAME =		bash-completion-2.1

CATEGORIES =		shells

HOMEPAGE =		http://bash-completion.alioth.debian.org/

MAINTAINER =		Florian Stinglmayr <fstinglmayr@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://bash-completion.alioth.debian.org/files/

RUN_DEPENDS =		shells/bash

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bash-completion
.for d in CHANGES COPYING AUTHORS README
		${INSTALL_DATA} ${WRKSRC}/$d ${PREFIX}/share/doc/bash-completion/$d
.endfor

.include <bsd.port.mk>
