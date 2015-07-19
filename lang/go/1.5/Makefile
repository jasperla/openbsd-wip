# $OpenBSD: Makefile,v 1.25 2015/05/06 08:28:26 jasper Exp $

ONLY_FOR_ARCHS =	${GO_ARCHS}

VERSION =		1.5

MASTER_SITES =		https://github.com/golang/go/archive/go1.5beta2/

BUILD_DEPENDS =		lang/go/1.4

MAKE_ENV =		GOROOT_BOOTSTRAP=${GOROOT:H}/1.4

DIRS =			doc lib misc src pkg

post-extract:
	mv ${WRKDIR}/go-go1.5beta2 ${WRKDIR}/go
	echo ${VERSION}${PATCHLEVEL} > ${WRKDIST}/VERSION

.include <bsd.port.mk>
