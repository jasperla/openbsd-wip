# $OpenBSD: Makefile,v 1.2 2015/05/15 07:32:00 jasper Exp $

COMMENT =		various tools for the Go programming language
GH_ACCOUNT =		golang
GH_PROJECT =		tools
GH_COMMIT =		27e692e6ec36d8f48be794f32553e1400c70dbf2
DISTNAME =		go-tools-1.4.20150206
CATEGORIES =		devel
HOMEPAGE =		http://golang.org/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MODULES =		lang/go

# lang/go has a runtime dependency on go-tools
#RUN_DEPENDS =		${MODGO_RUN_DEPENDS}

MODGO_TYPE =		bin tool
MODGO_PKGNAME =		golang.org/x/tools/cmd/benchcmp \
			golang.org/x/tools/cmd/callgraph \
			golang.org/x/tools/cmd/cover \
			golang.org/x/tools/cmd/digraph \
			golang.org/x/tools/cmd/eg \
			golang.org/x/tools/cmd/fiximports \
			golang.org/x/tools/cmd/godoc \
			golang.org/x/tools/cmd/godex \
			golang.org/x/tools/cmd/goimports \
			golang.org/x/tools/cmd/gomvpkg \
			golang.org/x/tools/cmd/gorename \
			golang.org/x/tools/cmd/gotype \
			golang.org/x/tools/cmd/oracle \
			golang.org/x/tools/cmd/ssadump \
			golang.org/x/tools/cmd/stress \
			golang.org/x/tools/cmd/stringer \
			golang.org/x/tools/cmd/vet
#			golang.org/x/tools/cmd/html2article \
#			golang.org/x/tools/cmd/present \

post-patch:
	mkdir -p ${WORKSPACE}/src/golang.org/x
	mv ${WRKDIST} ${WORKSPACE}/src/golang.org/x/tools

do-build:
	mkdir -p ${WORKSPACE}/${GO_PKG:H}
	${GO} install ${GO_FLAGS:= -n} ${MODGO_PKGNAME} 2>&1 | sed \
					-e "s, ${LOCALBASE}/go, ${WORKSPACE}," \
					-e "s,\$$WORK,${WRKBUILD},g" | sh -v

do-install:
	${MODGO_INSTALL_TARGET}
	${INSTALL_DATA_DIR} ${PREFIX}/go/${GO_PKG}
.for tool in vet cover
	${INSTALL_PROGRAM} ${WORKSPACE}/${GO_PKG}/${tool} \
					${PREFIX}/go/${GO_PKG}/${tool}
.endfor

.include <bsd.port.mk>
