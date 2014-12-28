# $OpenBSD: Makefile,v 1.55 2014/12/28 14:28:34 jasper Exp $

COMMENT=	real-time, concurrent and distributed functional language
BROKEN-sparc=	Requires v9|v9a|v9b; requested architecture is sparclite.

V=		17.4
DISTNAME=	otp_src_$V
PKGNAME=	erlang-$V
EPOCH=		0
CATEGORIES=	lang

# Erlang Public License
# http://www.erlang.org/EPLICENSE
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto m ncurses pthread util

MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://www.erlang.org/

DISTFILES=	${DISTNAME}.tar.gz \
	  	otp_doc_man_${V}.tar.gz \
		otp_doc_html_${V}.tar.gz

EXTRACT_ONLY=	${DISTNAME}.tar.gz

CONFIGURE_ARGS=	--disable-jinterface	\
		--disable-odbc		\
		--enable-threads 	\
		--enable-kernel-poll \
		--disable-hipe \
		--enable-smp-support

USE_GMAKE=	Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=autoconf no-autoheader
CONFIGURE_ENV=	LDFLAGS="${LDFLAGS} -pthread"
AUTOCONF_VERSION=2.59
AUTOCONF_DIR=	${WRKSRC} ${WRKSRC}/erts
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/erts/autoconf \
				${WRKSRC}/lib/erl_interface/src/auxdir

.if ${MACHINE_ARCH} == i386
CONFIGURE_ARGS+=	--enable-ethread-pre-pentium4-compatibility
.elif ${MACHINE_ARCH} == sparc64
CFLAGS+=		-fno-pie
LDFLAGS+=		-nopie
.endif

MAKE_ENV+=	DESTDIR=$(DESTDIR)

NO_TEST=	Yes

DOC_DIR=	${PREFIX}/lib/erlang

# Use the target 'gen-versions' to update this list
ERL_VERSIONS=	\
DIALYZER_VSN    2.7.3 \
COSNOTIFICATION_VSN     1.1.21 \
TYPER_VSN       0.9.8 \
IC_VSN  4.3.6 \
COSFILETRANSFER_VSN     1.1.16 \
CRYPTO_VSN      3.4.2 \
PARSETOOLS_VSN  2.0.12 \
COSTRANSACTIONS_VSN     1.2.14 \
TEST_SERVER_VSN 3.7.2 \
ASN1_VSN        3.0.3 \
COMMON_TEST_VSN 1.9 \
EI_VSN  3.7.20 \
ERL_INTERFACE_VSN       3.7.20 \
HIPE_VSN        3.11.2 \
STDLIB_VSN      2.3 \
XMERL_VSN       1.3.7 \
RUNTIME_TOOLS_VSN       1.8.15 \
DIAMETER_VSN    1.8 \
ODBC_VSN        2.10.22 \
EDOC_VSN        0.7.16 \
KERNEL_VSN      3.1 \
COSEVENT_VSN    2.1.15 \
ERL_DOCGEN_VSN  0.3.7 \
GS_VSN  1.5.16 \
SSH_VSN 3.1 \
SSL_VSN 5.3.8 \
RELTOOL_VSN     0.6.6 \
ORBER_VSN       3.7.1 \
WX_VSN  1.3.2 \
COSTIME_VSN     1.1.14 \
EMACS_VSN       2.7.0 \
TOOLS_VSN       2.7.1 \
ET_VSN  1.5 \
SYNTAX_TOOLS_VSN        1.6.17 \
DEBUGGER_VSN    4.0.2 \
ELDAP_VSN       1.1 \
SNMP_VSN        5.1.1 \
OSE_VSN 1.0.2 \
COSPROPERTY_VSN 1.1.17 \
COSEVENTDOMAIN_VSN      1.1.14 \
PERCEPT_VSN     0.8.10 \
OBSERVER_VSN    2.0.3 \
MEGACO_VSN      3.17.3 \
OS_MON_VSN      2.3 \
MNESIA_VSN      4.12.4 \
OTP_MIBS_VSN    1.0.10 \
PUBLIC_KEY_VSN  0.22.1 \
SASL_VSN        2.4.1 \
EUNIT_VSN       2.2.9 \
COMPILER_VSN    5.0.3 \
JINTERFACE_VSN  1.5.12 \
INETS_VSN       5.10.4 \
WEBTOOL_VSN     0.8.10 \
ERTS_VSN        6.3

.for _n _v in ${ERL_VERSIONS}
${_n}=${_v}
${_n:S/_VSN//}=${_n:S/_VSN//:L}-${_v}
SUBST_VARS+=${_n:S/_VSN//}
.endfor

SYSTEM_VSN=	${V:R}
SUBST_VARS+=	SYSTEM_VSN

# special cases
EI=		erl_interface-${EI_VSN}
COSEVENT=	cosEvent-${COSEVENT_VSN}
COSEVENTDOMAIN=	cosEventDomain-${COSEVENTDOMAIN_VSN}
COSFILETRANSFER=cosFileTransfer-${COSFILETRANSFER_VSN}
COSNOTIFICATION=cosNotification-${COSNOTIFICATION_VSN}
COSPROPERTY=	cosProperty-${COSPROPERTY_VSN}
COSTIME=	cosTime-${COSTIME_VSN}
COSTRANSACTIONS=cosTransactions-${COSTRANSACTIONS_VSN}

post-configure:
	@touch ${WRKSRC}/lib/odbc/SKIP

post-install:
	@ln -sf ../lib/erlang/lib/${EI}/bin/erl_call ${PREFIX}/bin/erl_call
	tar zxf ${FULLDISTDIR}/otp_doc_man_${V}.tar.gz -C ${DOC_DIR}
	tar zxf ${FULLDISTDIR}/otp_doc_html_${V}.tar.gz -C ${DOC_DIR}
	rm -r ${DOC_DIR}/lib/${JINTERFACE}
	rm -r ${DOC_DIR}/lib/${ODBC}
	rm -r ${DOC_DIR}/man/man7/*MIB.7
	rm -r ${DOC_DIR}/man/man7/*TM.7

# Special maintainer target, scan through vsn.mk files and build 'ERL_VERSIONS'
# list
gen-versions: extract
	@find ${WRKSRC} -name 'vsn.mk' -exec awk '/_VSN +=/ { print $$1"\t"$$3 " \\" }' {} \; | grep -v 'PRE_' | grep -v 'APP_' | sed 's/DOCB_VSN/DOCBUILDER_VSN/'
	@find ${WRKSRC} -name 'vsn.mk' -exec awk -F'=' '/_VSN=/ { print $$1"\t"$$2 " \\" }' {} \; | grep -v 'PRE_' | grep -v 'APP_'
	@grep VSN ${WRKSRC}/erts/vsn.mk |awk '/^VSN/ { print "ERTS_VSN\t" $$3 }'

.include <bsd.port.mk>
