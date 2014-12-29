# $OpenBSD: Makefile,v 1.35 2014/12/10 15:30:19 ajacoutot Exp $

COMMENT=		jabber server written in Erlang

V=			14.12
DISTNAME=		ejabberd-$V

CATEGORIES=		net

HOMEPAGE=		http://www.ejabberd.im/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		expat crypto ssl z

MASTER_SITES=		http://www.process-one.net/downloads/ejabberd/$V/
EXTRACT_SUFX=		.tgz

MODULES=		converters/libiconv
# XXX: not ported yet, look at ${WRKSRC}/rebar.config.script for exact versions
BUILD_DEPENDS=		devel/erl-ehyperloglog \
			devel/erl-goldrush \
			devel/erl-lager \
			devel/erl-p1_cache_tab \
			devel/erl-p1_utils \
			devel/erl-p1_zlib \
			net/erl-p1_stun \
			security/erl-p1_tls \
			telephony/erl-esip \
			textproc/erl-p1_stringprep \
			textproc/erl-p1_xml \
			textproc/erl-p1_yaml \
			converters/erl-p1_iconv
RUN_DEPENDS=		lang/erlang

MAKE_FLAGS+=		EJABBERDDIR=${PREFIX}/lib/ejabberd \
			LOGDIR=${EJLOGDIR} \
			ETCDIR=${SYSCONFDIR}/ejabberd \
			SPOOLDIR=${EJDBDIR}
FAKE_FLAGS+=		EJABBERDDIR=${WRKINST}/${PREFIX}/lib/ejabberd \
			LOGDIR=${WRKINST}${EJLOGDIR} \
			ETCDIR=${WRKINST}/${PREFIX}/share/examples/ejabberd \
			SPOOLDIR=${WRKINST}/${EJDBDIR}

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
SHARED_ONLY=		Yes
CONFIGURE_ARGS+=	--disable-pam \
			--enable-odbc \
			--disable-roster-gateway-workaround \
			--disable-mssql
CONFIGURE_ENV=		HOME=${WRKDIST} \
			LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

JABBERDUSER=            _ejabberd
JABBERDGROUP=           _ejabberd
EJDBDIR=		/var/db/ejabberd
EJLOGDIR=		/var/log/ejabberd

NO_TEST=		Yes

SUBST_VARS=		EJDBDIR EJLOGDIR JABBERDUSER

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ejabberd
	cd ${WRKDIST}/examples && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ejabberd/{} \; && \
		find . ! -type d -exec ${SUBST_CMD} -c {} ${PREFIX}/share/examples/ejabberd/{} \;
	${INSTALL_DATA} ${WRKSRC}/odbc/pg.sql ${PREFIX}/share/examples/ejabberd/
	${INSTALL_DATA} ${WRKSRC}/odbc/mysql.sql ${PREFIX}/share/examples/ejabberd/
	cd ${WRKDIST}/doc && \
		find . -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ejabberd/{} \; && \
		find . -name '*.html' -exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/ejabberd/{} \; && \
		find . -name '*.png' -exec ${INSTALL_DATA} {} ${PREFIX}/share/doc/ejabberd/{} \;
	${SUBST_CMD} ${PREFIX}/share/examples/ejabberd/ejabberd.cfg
	${SUBST_CMD} ${PREFIX}/sbin/ejabberdctl
	@chown ${SHAREOWN}:${BINGRP} ${PREFIX}/sbin/ejabberdctl
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/ejabberd
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/ejabberd
	@chmod ${SHAREMODE} ${PREFIX}/share/examples/ejabberd/*.cfg
	@find ${WRKINST} -type f -name '*.beforesubst' -exec rm {} \;

.include <bsd.port.mk>
