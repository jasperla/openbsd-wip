# $OpenBSD: $

COMMENT =	lightweight server providing access to task data

VERSION =	1.0.0
DISTNAME =	taskd-${VERSION}
PKGNAME =	taskd-${VERSION}
CATEGORIES =	productivity net

HOMEPAGE =	http://www.taskwarrior.org/

#MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

MASTER_SITES =	${HOMEPAGE}/download/

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		devel/cmake
#MODULES =		devel/cmake \
#			lang/lua
#MODLUA_SA =		Yes

WANTLIB += c gnutls m pthread stdc++ uuid

LIB_DEPENDS =	security/gnutls \
		sysutils/e2fsprogs>=1.42.7

CONFIGURE_STYLE =	cmake

CONFIGURE_ARGS +=	-DTASKD_DOCDIR=share/taskd \
			-DTASKD_MAN1DIR=man/man1 \
			-DTASKD_MAN5DIR=man/man5

CONFIGURE_ENV +=	CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST =		Yes

pre-configure:
	@perl -pi -e 's|share/doc/task/|share/taskwarrior/|g' \
		${WRKSRC}/doc/man/task-color.5.in \
		${WRKSRC}/doc/man/task-tutorial.5.in \
		${WRKSRC}/doc/man/taskrc.5.in \
		${WRKSRC}/src/Config.cpp
	@perl -pi -e 's|share/doc/task-VERSION/|share/taskwarrior/|g' \
		${WRKSRC}/scripts/vim/README

.include <bsd.port.mk>
