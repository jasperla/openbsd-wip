# $OpenBSD$

MODKERBEROS_IMPL ?=

.if empty(MODKERBEROS_IMPL)
MODKERBEROS_IMPL =	heimdal
.endif

.if ${MODKERBEROS_IMPL:L} != "heimdal" # && ${MODKERBEROS_IMPL:L} != "krb5-mit"
ERRORS += "Fatal: unknown Kerberos implementation: ${MODKERBEROS_IMPL}"
.endif

.if ${MODKERBEROS_IMPL:L} == "heimdal"
MODKERBEROS_WANTLIB +=	com_err crypto
MODKERBEROS_WANTLIB +=	heimdal/lib/asn1
MODKERBEROS_WANTLIB +=	heimdal/lib/heimbase
MODKERBEROS_WANTLIB +=	heimdal/lib/heimsqlite
MODKERBEROS_WANTLIB +=	heimdal/lib/hx509
MODKERBEROS_WANTLIB +=	heimdal/lib/krb5
MODKERBEROS_WANTLIB +=	heimdal/lib/roken
MODKERBEROS_WANTLIB +=	heimdal/lib/wind
.endif

MODKERBEROS_LIB_DEPENDS = \
			net/kerberos/${MODKERBEROS_IMPL},-libs

KRB5_CONFIG =		${LOCALBASE}/${MODKERBEROS_IMPL}/bin/krb5-config
LIB_DEPENDS +=		${MODKERBEROS_LIB_DEPENDS}
WANTLIB +=		${MODKERBEROS_WANTLIB}

MODKERBEROS_post-patch += \
			ln -sf ${KRB5_CONFIG} ${WRKDIR}/bin/krb5-config
