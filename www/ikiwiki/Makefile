# $OpenBSD: Makefile.template,v 1.61 2012/03/29 13:41:58 sthen Exp $

COMMENT =		Wiki compiler

DISTNAME =		ikiwiki_3.20121017
CATEGORIES =		www

HOMEPAGE =		http://ikiwiki.info/

#MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# GPL v2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_DEBIAN:=main/i/ikiwiki/}

BUILD_DEPENDS =		devel/p5-YAML-XS \
			mail/p5-Mail-Sendmail \
			textproc/p5-Text-Markdown \
			textproc/p5-XML-Simple \
			www/p5-CGI-FormBuilder \
			www/p5-CGI-Session \
			www/p5-HTML-Parser \
			www/p5-HTML-Scrubber \
			www/p5-HTML-Template \
			www/p5-URI
RUN_DEPENDS =		${BUILD_DEPENDS}

USE_GMAKE =		Yes
CONFIGURE_STYLE =	perl

NO_REGRESS =		Yes

WRKDIST =		${WRKDIR}/ikiwiki

.include <bsd.port.mk>
