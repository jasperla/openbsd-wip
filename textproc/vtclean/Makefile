# $OpenBSD$

COMMENT =		strip terminal escape sequences from text
DISTNAME =		vtclean-0.0.20160125
GH_ACCOUNT =		lunixbochs
GH_PROJECT =		vtclean
GH_COMMIT =		4fbf7632a2c6d3fbdb9931439bdbbeded02cbe36
CATEGORIES =		textproc sysutils

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

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
