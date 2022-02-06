# $OpenBSD$

COMMENT =		strip terminal escape sequences from text
GH_ACCOUNT =		lunixbochs
GH_PROJECT =		vtclean
GH_TAGNAME =		v1.0.0
CATEGORIES =		textproc sysutils

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

# Currently the library part of this project is not used in ports, so default
# "bin" type is perfectly fine.
#MODGO_TYPE =		bin lib
WRKSRC =		${MODGO_WORKSPACE}/src/github.com/lunixbochs/vtclean
ALL_TARGET =		github.com/lunixbochs/vtclean \
			github.com/lunixbochs/vtclean/vtclean

.include <bsd.port.mk>
