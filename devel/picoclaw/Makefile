# $OpenBSD$

# GitHub snapshot by commit (same DIST_TUPLE shape as devel/grok-build).
# Builds against the current base libc (this host: libc.so.104.0). A
# prebuilt binary linked to libc.so.102.2 will not run on newer 8.0.

COMMENT =		lightweight Go personal AI assistant

# v0.3.1 plus later main; pin the dump SHA in DIST_TUPLE.
V =			0.3.1pl20260908
COMMIT =		bbf6893ca7afad27f1d00a0f5a45982a549c6ed6
DIST_TUPLE =		github sipeed picoclaw ${COMMIT} .
PKGNAME =		picoclaw-${V}
# On-disk GitHub dump name (the {url} part is fetch-only). Module zips stay
# in DISTDIR and are copied in post-extract as a GOPROXY tree.
EXTRACT_ONLY =		sipeed-picoclaw-${COMMIT}.tar.gz

CATEGORIES =		devel
HOMEPAGE =		https://github.com/sipeed/picoclaw
MAINTAINER =		Todd T. Fries <todd@fries.net>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go
# Snapshots currently ship go-1.26.7; lang/go in-tree wants 1.27.1.
# PicoClaw's go.mod is 1.25.13. Use the installed compiler.
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
			GOPROXY=file://${WRKDIR}/go_modules \
			GOPATH=${WRKDIR}/go \
			GOBIN=${WRKDIR}/go/bin

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

post-extract:
	mkdir -p ${WRKDIR}/go_modules
	cd ${DISTDIR}/go_modules && pax -rw -pp . ${WRKDIR}/go_modules

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		CGO_ENABLED=0 GO111MODULE=on GOSUMDB=off \
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
