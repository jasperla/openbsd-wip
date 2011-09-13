# $OpenBSD: Makefile.template,v 1.54 2008/01/13 16:43:57 espie Exp $

COMMENT =	semantic grep, based on coccinelle

MODPY_EGG_VERSION = 1.0
DISTNAME =	coccigrep-${MODPY_EGG_VERSION}

CATEGORIES =	devel

HOMEPAGE =	http://home.regit.org/software/coccigrep/

# GPLv3 only
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

MASTER_SITES =	http://home.regit.org/wp-content/uploads/2011/08/

MODULES =	lang/python
RUN_DEPENDS =	devel/coccinelle
NO_REGRESS =	Yes

MODPY_SETUPTOOLS = Yes

post-configure:
	${SUBST_CMD} ${WRKSRC}/src/coccigrep.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/coccigrep
	${INSTALL_DATA} ${WRKSRC}/README.rst ${PREFIX}/share/doc/coccigrep/

.include <bsd.port.mk>
