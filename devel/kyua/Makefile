# $OpenBSD $

COMMENT =		Quality assurance toolchain for software packages	
DISTNAME =		kyua-cli-0.5

SHARED_LIBS += ct                   5.0      # .4.0
CATEGORIES =		devel misc
HOMEPAGE =			http://code.google.com/p/kyua/

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

# "make port-lib-depends-check" can help
WANTLIB += c m stdc++

MASTER_SITES            = http://kyua.googlecode.com/files/

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
