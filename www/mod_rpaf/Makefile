# $OpenBSD:

COMMENT =	Apache module reverse proxy add forward

DISTNAME =	mod_rpaf-0.6
CATEGORIES =	www

MAINTAINER =	Roman Kravchuk <kravchuk.kp@gmail.com>

HOMEPAGE =	http://stderr.net/apache/rpaf/
MASTER_SITES =	http://stderr.net/apache/rpaf/download/

MODULES +=	apache-module

# Apache
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP =	Yes

MODAPACHE_NAME =	rpaf

NO_REGRESS =		Yes
APXS =			/usr/sbin/apxs

do-build:
	cd ${WRKSRC} && \
		${APXS} -c -o mod_rpaf.so mod_rpaf.c
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_rpaf
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/mod_rpaf
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
