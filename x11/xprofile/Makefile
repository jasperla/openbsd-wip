# $OpenBSD$

MODPY_EGG_VERSION =	${GH_TAGNAME}
COMMENT =	tool to manage and automatically apply xrandr configurations
DISTNAME =	xprofile-${GH_TAGNAME}
CATEGORIES =	x11

HOMEPAGE =	https://github.com/${GH_ACCOUNT}/${GH_PROJECT}

MAINTAINER =	Fabian Raetz <fabian.raetz@gmail.com>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =	nrocco
GH_PROJECT =	xprofile
GH_TAGNAME =	1.1.5
GH_COMMIT =	9b65bd0b681d6df1b7aadb01e4587e840f48c7c1

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/xprofile.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/xprofilerc.5 ${PREFIX}/man/man5

.include <bsd.port.mk>
