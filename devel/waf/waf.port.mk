# $OpenBSD$

MODWAF_SYSTEM_WAF ?=		No
MODWAF_WAFDIR ?=		${LOCALBASE}/lib/waflib

MODWAF_ENV =			${SETENV} ${MAKE_ENV}

.if ${MODWAF_SYSTEM_WAF:L:Myes}
MODWAF_BIN ?=			${LOCALBASE}/bin/waf
MODWAF_ENV +=			WAFDIR="${MODWAF_WAFDIR:H}"
BUILD_DEPENDS +=		devel/waf
.else
MODWAF_BIN ?=			./waf
.endif

SEPARATE_BUILD ?=		Yes

MODWAF_CMD =			${MODWAF_ENV} ${MODWAF_BIN}
MODWAF_ARGS =			-o ${WRKBUILD} -t ${WRKSRC} --destdir="${DESTDIR}"

# Flags
MODWAF_CONFIGURE_FLAGS ?=	${CONFIGURE_ARGS}
MODWAF_BUILD_FLAGS ?=		${MAKE_FLAGS}
MODWAF_INSTALL_FLAGS ?=		${FAKE_FLAGS}

MODWAF_CONFIGURE_TARGET =	cd ${WRKSRC} && ${MODWAF_CMD} configure \
					${MODWAF_ARGS} ${MODWAF_CONFIGURE_FLAGS}
MODWAF_BUILD_TARGET =		cd ${WRKSRC} && ${MODWAF_CMD} build -v \
					${MODWAF_ARGS} ${MODWAF_BUILD_FLAGS}
MODWAF_INSTALL_TARGET =		cd ${WRKSRC} && ${MODWAF_CMD} install \
					${MODWAF_ARGS} ${MODWAF_INSTALL_FLAGS}

.if ${CONFIGURE_STYLE:Mwaf}
. if !target(do-configure)
do-configure:
	@${MODWAF_CONFIGURE_TARGET}
. endif

. if !target(do-build)
do-build:
	@${MODWAF_BUILD_TARGET}
. endif

. if !target(do-install)
do-install:
	@${MODWAF_INSTALL_TARGET}
. endif
.endif
