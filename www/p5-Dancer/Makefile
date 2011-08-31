# $OpenBSD$

COMMENT =	Lightweight yet powerful web application framework

MODULES =	cpan
DISTNAME =	Dancer-1.3070
CATEGORIES =	www
USE_GROFF =	Yes


HOMEPAGE =	http://perldancer.org/

MAINTAINER =	Wen Heping <wenheping@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =		devel/p5-YAML \
			mail/p5-MIME-Types \
			www/p5-URI \
			www/p5-libwww \
			www/p5-HTTP-Body>=1.07 \
			www/p5-HTTP-Server-Simple-PSGI>=0.11
REGRESS_DEPENDS =	net/p5-Test-TCP

MAKE_ENV+=		TEST_POD=1

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
