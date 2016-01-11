# $OpenBSD$

MODWAF_SYSTEM_WAF ?=		No
MODWAF_WAFDIR ?=		${LOCALBASE}/lib/waflib

.if empty(CONFIGURE_STYLE)
CONFIGURE_STYLE =		waf
.endif

.if ${MODWAF_SYSTEM_WAF:L:Myes}
MODWAF_BIN ?=			${LOCALBASE}/bin/waf
MODWAF_ENV +=			WAFDIR="${MODWAF_WAFDIR:H}"
.else
MODWAF_BIN ?=			./waf
.endif

MODWAF_CMD =			${MODWAF_ENV} ${MODWAF_BIN}
MODWAF_ARGS =			-o ${WRKBUILD} -t ${WRKSRC} --destdir="${DESTDIR}"

MODWAF_CONFIGURE_TARGET =	${CONFIGURE_ENV} ${MODWAF_CMD} configure \
					${MODWAF_ARGS} ${CONFIGURE_ARGS}
MODWAF_BUILD_TARGET =		${MAKE_ENV} ${MODWAF_CMD} build -v \
					${MODWAF_ARGS} ${MAKE_FLAGS}
MODWAF_INSTALL_TARGET =		${FAKE_ENV} ${MODWAF_CMD} install \
					${MODWAF_ARGS} ${FAKE_FLAGS}

SEPARATE_BUILD ?=		Yes

.if ${CONFIGURE_STYLE:Mwaf}
. if !target(do-configure)
do-configure:
	@cd ${WRKSRC} && ${MODWAF_CONFIGURE_TARGET}
. endif

. if !target(do-build)
do-build:
	@cd ${WRKSRC} && ${MODWAF_BUILD_TARGET}
. endif

. if !target(do-install)
do-install:
	@cd ${WRKSRC} && ${MODWAF_INSTALL_TARGET}
. endif
.endif
