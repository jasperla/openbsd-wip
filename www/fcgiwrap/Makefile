# $OpenBSD$

COMMENT =	Simple FastCGI wrapper for CGI scripts

DISTNAME =	fcgiwrap-1.0.3
CATEGORIES =	www

HOMEPAGE =	http://nginx.localdomain.pl/wiki/FcgiWrap
MASTER_SITES =	http://github.com/downloads/gnosek/fcgiwrap/

MAINTAINER =	Christian Rueger <cr+openbsd@rueger-net.de>

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =	c fcgi
LIB_DEPENDS =	www/fcgi

WRKDIST =	${WRKDIR}/gnosek-fcgiwrap-2e301c8
CFLAGS +=	-I${LOCALBASE}/include -L${LOCALBASE}/lib

AUTOCONF_VERSION =	2.61
CONFIGURE_STYLE =	autoconf

USE_GROFF =	Yes
NO_REGRESS =	Yes

post-patch:
	@perl -pi -e "s/\@prefix\@\@mandir\@/\@mandir\@/g" \
		${WRKSRC}/Makefile.in

.include <bsd.port.mk>
