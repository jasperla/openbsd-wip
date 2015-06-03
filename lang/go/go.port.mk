# $OpenBSD: go.port.mk,v 1.1 2015/05/15 07:30:41 jasper Exp $

ONLY_FOR_ARCHS ?=	${GO_ARCHS}

MODGO_BUILDDEP ?=	Yes

MODGO_RUN_DEPENDS =	lang/go
MODGO_BUILD_DEPENDS =	lang/go

.if ${NO_BUILD:L} == "no" && ${MODGO_BUILDDEP:L} == "yes"
BUILD_DEPENDS +=	${MODGO_BUILD_DEPENDS}
.endif

GO_PKG ?=		pkg/tool/openbsd_${MACHINE_ARCH:S/i386/386/}

SUBST_VARS +=		GO_PKG

MODGO_SUBDIR ?=		${WRKDIST}
MODGO_TYPE ?=
WORKSPACE ?=		${WRKDIR}/go
GO =			GOPATH="${WORKSPACE}" WORK="${WRKBUILD}" go
GO_FLAGS +=		-x -work

SEPARATE_BUILD ?=	Yes
WRKSRC ?=		${WORKSPACE}/src/${MODGO_PKGNAME}

MODGO_SETUP_WORKSPACE =	mkdir -p ${WRKSRC:H}; mv ${MODGO_SUBDIR} ${WRKSRC};

MODGO_BUILD_TARGET =	${GO} install ${GO_FLAGS} ${MODGO_PKGNAME}

.if ${MODGO_TYPE:L:Mlib}
MODGO_INSTALL_TARGET =	${INSTALL_DATA_DIR} ${PREFIX}/go; \
			cp -R ${WORKSPACE}/pkg ${WORKSPACE}/src ${PREFIX}/go;
.endif
.if ${MODGO_TYPE:L:Mbin}
MODGO_INSTALL_TARGET += cp ${WORKSPACE}/bin/* ${PREFIX}/bin
.endif

MODGO_TEST_TARGET =	${GO} test ${GO_FLAGS} ${MODGO_PKGNAME}

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
