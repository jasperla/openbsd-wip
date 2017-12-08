# $OpenBSD$

COMMENT =		strip terminal escape sequences from text
DISTNAME =		vtclean-0.0.20170504
GH_ACCOUNT =		lunixbochs
GH_PROJECT =		vtclean
GH_COMMIT =		d14193dfc626125c831501c1c42340b4248e1f5a
CATEGORIES =		textproc sysutils

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/go

# Currently the library part of this project is not used in ports, so default
# "bin" type is perfectly fine.
#MODGO_TYPE =		bin lib
WRKSRC =		${MODGO_WORKSPACE}/src/github.com/lunixbochs/vtclean
ALL_TARGET =		github.com/lunixbochs/vtclean \
			github.com/lunixbochs/vtclean/vtclean

.include <bsd.port.mk>
