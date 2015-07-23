# $OpenBSD: Makefile,v 1.25 2015/05/06 08:28:26 jasper Exp $

VERSION =		1.5

GT_DATE =		20150716
GT_COMMIT =		87156cb7667343326165d84f3557bd91ab57428b

# This won't be needed once 1.5 is released
MASTER_SITES0 =         https://github.com/golang/go/archive/go1.5beta2/

BUILD_DEPENDS =		lang/go/1.4

DIRS =			doc lib misc src pkg
TOOLS =			benchcmp callgraph cover digraph eg fiximports godex \
			godoc goimports gomvpkg gorename gotype oracle ssadump \
			stress stringer tipgodoc
#TOOLS +=		html2article present 

post-extract:
	mv ${WRKDIR}/go-go1.5beta2 ${WRKDIR}/go
	echo ${VERSION}${PATCHLEVEL} > ${WRKDIST}/VERSION

.include <bsd.port.mk>
