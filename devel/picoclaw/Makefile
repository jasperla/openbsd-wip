# $OpenBSD$

# GitHub snapshot by commit (same DIST_TUPLE shape as devel/grok-build).
# Builds against the current base libc (this host: libc.so.104.0). A
# prebuilt binary linked to libc.so.102.2 will not run on newer 8.0.

COMMENT =		lightweight Go personal AI assistant

# v0.5.1 plus dc-cumulative (picobus patches on afjcjsbx main).
# Pin that branch's tip; GitHub serves the archive by commit.
V =			0.5.1pl20261022
COMMIT =		789ab731a6fb7efd0510d2b6bd3ea30ece5b9a3e
DIST_TUPLE =		github toddfries picoclaw ${COMMIT} .
PKGNAME =		picoclaw-${V}
# DIST_TUPLE saves <account>-<project>-<commit>.tar.gz. The brace in the
# template is the fetch path only. Module zips stay in DISTDIR and are
# copied in post-extract as a GOPROXY tree.
EXTRACT_ONLY =		toddfries-picoclaw-${COMMIT}.tar.gz

CATEGORIES =		devel
HOMEPAGE =		https://github.com/toddfries/picoclaw
MAINTAINER =		Todd T. Fries <todd@fries.net>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go
# go.mod says go 1.27.3. The module path on dc-cumulative is still
# github.com/sipeed/picoclaw (the afjcjsbx rename branch is not included).
MODGO_BUILDDEP =	No

# Source is the GitHub archive, not proxy.golang.org. Keep GO111MODULE on
# and feed deps from DISTFILES.go (modules.inc) via a file:// GOPROXY.
WRKDIST =		${WRKDIR}/picoclaw-${COMMIT}
# lang/go GOPATH mode moves ${WRKDIST} → go/src/${ALL_TARGET}
ALL_TARGET =		github.com/sipeed/picoclaw
MODGO_LDFLAGS +=	-X github.com/sipeed/picoclaw/pkg/config.GitCommit=${COMMIT} \
			-X github.com/sipeed/picoclaw/pkg/config.Version=${V}

MAKE_ENV +=		CGO_ENABLED=0 \
			GO111MODULE=on \
			GOSUMDB=off \
			GOTOOLCHAIN=go1.27.3 \
			GOPROXY=file://${WRKDIR}/go_modules \
			GOPATH=${WRKDIR}/go \
			GOBIN=${WRKDIR}/go/bin \
			GOCACHE=${WRKDIR}/gocache \
			GOMODCACHE=${WRKDIR}/gomodcache \
			GOTMPDIR=${WRKDIR}/gotmp \
			TMPDIR=${WRKDIR}/gotmp

NO_TEST =		Yes

.include "modules.inc"

.for _modpath _modver in ${MODGO_MODULES}
DISTFILES.go +=		go_modules/{}${_modpath}/@v/${_modver}.zip
DISTFILES.go +=		go_modules/{}${_modpath}/@v/${_modver}.mod
.endfor
.for _modpath _modver in ${MODGO_MODFILES}
DISTFILES.go +=		go_modules/{}${_modpath}/@v/${_modver}.mod
.endfor
SITES.go =		https://proxy.golang.org/

# lang/go on this host is 1.27.1. go.mod requires 1.27.3, and the file
# proxy cannot fetch a toolchain unless these three objects are distfiles.
GOTOOLCHAIN_VER =	v0.0.1-go1.27.3.openbsd-amd64
DISTFILES.go +=		go_modules/{}golang.org/toolchain/@v/${GOTOOLCHAIN_VER}.zip
DISTFILES.go +=		go_modules/{}golang.org/toolchain/@v/${GOTOOLCHAIN_VER}.mod
DISTFILES.go +=		go_modules/{}golang.org/toolchain/@v/${GOTOOLCHAIN_VER}.info

post-extract:
	mkdir -p ${WRKDIR}/go_modules
	cd ${DISTDIR}/go_modules && pax -rw -pp . ${WRKDIR}/go_modules

do-build:
	mkdir -p ${WRKDIR}/gocache ${WRKDIR}/gomodcache ${WRKDIR}/gotmp ${WRKDIR}/go/bin
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		CGO_ENABLED=0 GO111MODULE=on GOSUMDB=off \
		GOTOOLCHAIN=go1.27.3 \
		GOPROXY=file://${WRKDIR}/go_modules \
		GOPATH=${WRKDIR}/go GOBIN=${WRKDIR}/go/bin \
		go install -mod=readonly -trimpath -buildvcs=false \
		-tags goolm,stdjson \
		-ldflags="${MODGO_LDFLAGS} -s -w" \
		./cmd/picoclaw

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKDIR}/go/bin/picoclaw ${PREFIX}/bin/

.include <bsd.port.mk>
