# $OpenBSD: go.port.mk,v 1.3 2015/06/12 05:20:48 czarkoff Exp $

ONLY_FOR_ARCHS ?=	${GO_ARCHS}

MODGO_BUILDDEP ?=	Yes

MODGO_GOVER =		1.5
MODGO_RUN_DEPENDS =	lang/go/${MODGO_GOVER}
MODGO_BUILD_DEPENDS =	lang/go/${MODGO_GOVER}

.if ${NO_BUILD:L} == "no" && ${MODGO_BUILDDEP:L} == "yes"
BUILD_DEPENDS +=	${MODGO_BUILD_DEPENDS}
.endif

_GODIR =		go/${MODGO_GOVER}
MODGO_PACKAGES =	${_GODIR}/pkg/openbsd_${MACHINE_ARCH:S/i386/386/}
MODGO_SOURCES =		${_GODIR}/src
MODGO_TOOLS =		${_GODIR}/pkg/tool/openbsd_${MACHINE_ARCH:S/i386/386/}

SUBST_VARS +=		MODGO_TOOLS MODGO_PACKAGES MODGO_SOURCES

MODGO_SUBDIR ?=		${WRKDIST}
MODGO_WORKSPACE ?=	${WRKDIR}/go
MODGO_ENV +=		GOPATH="${MODGO_WORKSPACE}" GOWORKDIR="${WRKBUILD}"
MODGO_CMD ?=		env ${MODGO_ENV} go
MODGO_BUILD_CMD =	${MODGO_CMD} install ${MODGO_FLAGS}
MODGO_TEST_CMD =	${MODGO_CMD} test ${MODGO_FLAGS}

.if defined(GH_ACCOUNT) && defined(GH_PROJECT)
ALL_TARGET ?=		github.com/${GH_ACCOUNT}/${GH_PROJECT}
.endif
TEST_TARGET ?=		${ALL_TARGET}

SEPARATE_BUILD ?=	Yes
WRKSRC ?=		${MODGO_WORKSPACE}/src/${ALL_TARGET}

MODGO_SETUP_WORKSPACE =	mkdir -p ${WRKSRC:H}; \
			mv ${MODGO_SUBDIR} ${WRKSRC}; \
			ln -s ${WRKSRC} ${MODGO_SUBDIR};

MODGO_BUILD_TARGET =	${MODGO_BUILD_CMD} ${ALL_TARGET}

MODGO_FLAGS ?=		-x -work -pkgdir "${WRKBUILD}" 

MODGO_TYPE ?=		bin

.if ${MODGO_TYPE:L:Mbin}
MODGO_INSTALL_TARGET += ${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/* \
						${PREFIX}/bin/
.endif

# Go source files serve the purpose of libraries, so sources should be included
# with library ports.
.if ${MODGO_TYPE:L:Mlib}
RUN_DEPENDS +=		lang/go/${MODGO_GOVER}
.  for pkg in ${ALL_TARGET}
MODGO_INSTALL_TARGET =	${INSTALL_DATA_DIR} \
				${PREFIX}/${MODGO_SOURCES}/${pkg:H} \
				${PREFIX}/${MODGO_PACKAGES}/${pkg:H}; \
			${INSTALL_DATA} ${WRKBUILD}/${pkg}.a \
					${PREFIX}/${MODGO_PACKAGES}/${pkg}.a; \
			cp -R ${MODGO_WORKSPACE}/src/${pkg} \
					${PREFIX}/${MODGO_SOURCES}/${pkg};
.  endfor
.endif

MODGO_TEST_TARGET =	${MODGO_TEST_CMD} ${TEST_TARGET}

.if empty(CONFIGURE_STYLE)
.  if !target(post-patch)
post-patch:
	${MODGO_SETUP_WORKSPACE}
.  endif

.  if !target(do-build)
do-build:
	${MODGO_BUILD_TARGET}
.  endif

.  if !target(do-install)
do-install:
	${MODGO_INSTALL_TARGET}
.  endif

.  if !target(do-test)
do-test:
	${MODGO_TEST_TARGET}
.  endif
.endif
