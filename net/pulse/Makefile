# $OpenBSD: Makefile.template,v 1.71 2014/07/10 12:33:17 sthen Exp $

# XXX This uses godep to statically build in go libs:
# http://www.goinggo.net/2013/10/manage-dependencies-with-godep.html

COMMENT =		distributed file synchroniser
V =			0.10.2

GH_ACCOUNT =		syncthing
GH_PROJECT =		syncthing
GH_TAGNAME =		v${V}
GH_COMMIT =		9d348319fd507acea15d6fc4905c6edbd6af9a39
DISTNAME =		pulse-${V}

#PKGNAME =		pulse-${V} # previously "syncthing"

CATEGORIES =		net
HOMEPAGE =		https://ind.ie/pulse/
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# XXX
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread

BUILD_DEPENDS =		lang/go>=1.3

NO_TEST =		Yes

# Go is picky about the directory structure.
# We make the structure it expects and override GOPATH.
# Note that we cannot use WRKBUILD instead GO_WRKBUILD or ports will
# create the dir before we can link it in.
LINK_PARENT =	${WRKDIR}/src/github.com/syncthing
GO_WRKBUILD =	${LINK_PARENT}/syncthing
GOPATH =	${WRKDIR}
pre-build:
	mkdir -p ${LINK_PARENT}
	ln -sf ${WRKSRC} ${GO_WRKBUILD}

do-build:
	cd ${GO_WRKBUILD} && GOPATH=${GOPATH} ${LOCALBASE}/bin/go run build.go

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/syncthing ${PREFIX}/bin

.include <bsd.port.mk>
