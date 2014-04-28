# $OpenBSD$

COMMENT =	report hardware meta information

MODULES =	cpan
DISTNAME =	Tapper-TestSuite-HWTrack-4.1.1
CATEGORIES =	www

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	textproc/p5-XML-Simple \
		devel/p5-LockFile-Simple \
		devel/p5-aliased \
		devel/p5-common-sense \
		devel/p5-File-ShareDir \
		devel/p5-Moose \
		devel/p5-MooseX-Log-Log4perl \
		devel/p5-YAML \
		www/p5-Tapper-Base

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
