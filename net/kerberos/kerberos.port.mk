# $OpenBSD$

MOD_KERBEROS_IMPL ?=

.if empty(MOD_KERBEROS_IMPL)
MOD_KERBEROS_IMPL =	heimdal
.endif

.if ${MOD_KERBEROS_IMPL:L} != "heimdal" # && ${MOD_KERBEROS_IMPL:L} != "krb5-mit"
ERRORS += "Fatal: unknown Kerberos implementation: ${MOD_KERBEROS_IMPL}"
.endif

.if ${MOD_KERBEROS_IMPL:L} == "heimdal"
MOD_KERBEROS_WANTLIB +=	com_err crypto
MOD_KERBEROS_WANTLIB +=	heimdal/lib/asn1
MOD_KERBEROS_WANTLIB +=	heimdal/lib/heimbase
MOD_KERBEROS_WANTLIB +=	heimdal/lib/heimsqlite
MOD_KERBEROS_WANTLIB +=	heimdal/lib/hx509
MOD_KERBEROS_WANTLIB +=	heimdal/lib/krb5
MOD_KERBEROS_WANTLIB +=	heimdal/lib/roken
MOD_KERBEROS_WANTLIB +=	heimdal/lib/wind
.endif

MOD_KERBEROS_LIB_DEPENDS = \
			net/kerberos/${MOD_KERBEROS_IMPL},-libs

KRB5_CONFIG =		${LOCALBASE}/${MOD_KERBEROS_IMPL}/bin/krb5-config
CONFIGURE_ENV +=	KRB5_CONFIG=${KRB5_CONFIG}
LIB_DEPENDS +=		${MOD_KERBEROS_LIB_DEPENDS}
WANTLIB +=		${MOD_KERBEROS_WANTLIB}
