# $OpenBSD$

COMMENT =		go documentation tool
DISTNAME =		godoc-1.4
CATEGORIES =		textproc devel
HOMEPAGE =		http://golang.org/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MASTER_SITES =		http://spacehopper.org/mirrors/

EXTRACT_CASES =		${DISTNAME}${EXTRACT_SUFX}) mkdir -p ${WRKSRC}; \
			tar -xzf ${FULLDISTDIR}/$$archive -C ${WRKSRC};;

BUILD_DEPENDS =		lang/go
RUN_DEPENDS =		lang/go

WRKSRC =		${WRKDIST}/src/golang.org/x/tools

do-build:
	cd ${WRKSRC}/cmd/godoc && GOPATH="${WRKDIST}" go build -v

do-test:
	cd ${WRKSRC}/cmd/godoc && GOPATH="${WRKDIST}" go test -v

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cmd/godoc/godoc ${PREFIX}/bin/godoc

.include <bsd.port.mk>
