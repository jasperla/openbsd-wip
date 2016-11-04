# $OpenBSD: Makefile,v 1.53 2016/11/03 07:45:29 kirby Exp $

PORTROACH = 	limitw:1,even

COMMENT-main =	flexible network host monitoring, client
COMMENT-server =flexible network host monitoring, server

GH_ACCOUNT = 	munin-monitoring
GH_PROJECT = 	munin
GH_TAGNAME =	2.999.3
V = 		${GH_TAGNAME}
DISTNAME =	munin-$V
PKGNAME-main =	munin-node-$V
PKGNAME-server =munin-server-$V
CATEGORIES =	net

HOMEPAGE =	http://munin-monitoring.org/
#MASTER_SITES =	http://downloads.munin-monitoring.org/munin/stable/$V/

# Mostly GPLv2.
# DejaVuSans.ttf and DejaVuSansMono.ttf has a non-restrictive license.
PERMIT_PACKAGE_CDROM =	Yes

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

MULTI_PACKAGES =	-main -server

# Used for file locations and MODPY_BIN, RUBY, MODRUBY_ADJ_FILES.
# Only very minor optional munin plugins use these languages so they
# aren't forced as dependencies (same for bash).
MODULES =		lang/python lang/ruby
# No need for MODx_RUNDEP as we already override RUN_DEPENDS-{main,server}
MODPY_BUILDDEP =	No
MODRUBY_BUILDDEP =	No

RUN_DEPENDS-main =	logtail-*|logsentry-*:sysutils/logtail \
			devel/p5-Log-Dispatch \
			devel/p5-Log-Log4perl \
			devel/p5-Net-Server \
			net/p5-Net-CIDR
RUN_DEPENDS-server +=	databases/p5-DBD-SQLite \
			devel/p5-File-Copy-Recursive \
			devel/p5-List-MoreUtils \
			devel/p5-Net-Server \
			devel/p5-Params-Validate>=1.13 \
			devel/p5-Time-TimeDate \
			net/p5-IO-Socket-INET6 \
			net/rrdtool \
			security/p5-Net_SSLeay \
			textproc/p5-XML-Dumper \
			www/p5-HTML-Template>=2.95 \
			www/p5-HTML-Template-Pro \
			www/p5-HTTP-Server-Simple \
			www/p5-URI \
			net/munin,-main

CONFIGURE_ARGS += 	--install_path=share=${PREFIX}/libexec/munin \
			--install_path=etc=${SYSCONFDIR}/munin
PKG_ARCH =		*

CONFIGURE_STYLE =	modbuild

MAKE_ENV +=		OSTYPE=openbsd \
			PREFIX=${PREFIX} \
			PYTHON=${MODPY_BIN} \
			SHAREDIR=${PREFIX}/libexec/munin/ \
			MUNIN_DBDIR=/var/db/munin

CONFIGURE_ENV += 	${MAKE_ENV}

MAKE_FLAGS +=		BASH=${LOCALBASE}/bin/bash \
			PLUGINUSER=_munin-plugin

FAKE_FLAGS +=		HTMLDIR=${WRKINST}/${PREFIX}/share/examples/munin/www \
			CGIDIR=${WRKINST}/${PREFIX}/share/examples/munin/www \
			DOCDIR=${WRKINST}/${PREFIX}/share/doc/munin \
			MUNIN_CONFDIR=${WRKINST}/${PREFIX}/share/examples/munin1

MUNIN_PLUGINS =		bgpd if_pps_ intr pf_changes pf_searches pf_states \
			sensors_ vmstat

.for i in ${MUNIN_PLUGINS}
SUBST_LIST += ${FILESDIR}/$i ${WRKSRC}/plugins/node.d.openbsd/$i
.endfor

post-extract:
	${SUBST_CMD} -m 444 -c ${SUBST_LIST}
	chmod -R +x ${WRKSRC}/plugins/node.d.openbsd
	rm ${WRKSRC}/plugins/node.d.openbsd/swap # we have no in/out fields
	rm -r ${WRKSRC}/plugins/node.d/example-graphs

# Fixup hardcoded paths in plugins to use TRUEPREFIX/LOCALBASE as appropriate,
# there are far too many to handle this via patches/SUBST_CMD, and this method
# plays nicer with update-patches.
pre-configure:
	cd ${WRKSRC}/script; \
	${SUBST_CMD} munin-node munin-node-configure munin-run; \
	rm munin-{node,node-configure,run}.{beforesubst,orig}; \
	perl -pi -e 's,/etc/munin/plugins,${SYSCONFDIR}/munin/plugins,g;' \
	    -e 's,/etc/munin/node.d,${SYSCONFDIR}/munin/plugins,g;' \
	    -e 's,/usr/local/libexec/munin,${TRUEPREFIX}/libexec/munin,g;' \
	    -e 's,/usr/local,${LOCALBASE},g;' \
	    -e 's,/usr/share/munin/node/plugins-auto,${TRUEPREFIX}/libexec/munin/plugins,g;' \
	    ${WRKSRC}/plugins/node.d/* ${WRKSRC}/plugins/node.d.openbsd/*

post-install:
	${MODRUBY_RUBY_ADJ} ${PREFIX}/libexec/munin/plugins/tomcat_
	mv ${WRKINST}/etc/munin ${PREFIX}/share/examples/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/munin/plugin-conf.d/
	${INSTALL_DATA} ${FILESDIR}/openbsd-packages \
	    ${PREFIX}/share/examples/munin/plugin-conf.d/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/munin/
	rm -f  ${PREFIX}/libexec/munin/plugins/*.orig

.include <bsd.port.mk>
