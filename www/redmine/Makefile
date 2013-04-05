# $OpenBSD$
# Some ideas from FreeBSD www/redmine port.

COMMENT-main =		bug tracker and project management system
COMMENT-extra =		some sample files for Redmine
V =			2.3.0
DISTNAME =		redmine-${V}
PKGNAME-main =		${DISTNAME}
PKGNAME-extra =		redmine-extra-${V}
CATEGORIES =		www
HOMEPAGE =		http://www.redmine.org/
MAINTAINER =		Vadim Zhukov <persgray@gmail.com>

REVISION-main =		3

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://files.rubyforge.vm.bytemark.co.uk/redmine/

MULTI_PACKAGES =	-main -extra

MODULES =		www/redmine

# XXX Need to keep in sync with ruby.port.mk
FLAVOR ?=		ruby19

BUILD_DEPENDS =		${RUN_DEPENDS-main}
RUN_DEPENDS-main =	${RUN_DEPENDS} \
			devel/ruby-bundler,${MODRUBY_FLAVOR}>=1.0,<2.0 \
			devel/ruby-i18n,${MODRUBY_FLAVOR}>=0.6.0,<0.7 \
			devel/ruby-rdoc,${MODRUBY_FLAVOR}>=3.12.2,<3.13 \
			devel/ruby-tilt,${MODRUBY_FLAVOR}>=1.3.4,<1.4 \
			net/ruby-net-ldap,${MODRUBY_FLAVOR}>=0.3.1,<0.4 \
			security/ruby-rack-openid,${MODRUBY_FLAVOR} \
			security/ruby-openid,${MODRUBY_FLAVOR}>=2.2.2,<2.3 \
			textproc/ruby-builder,${MODRUBY_FLAVOR}>=3.0.0,<3.1 \
			textproc/ruby-coderay,${MODRUBY_FLAVOR}>=1.0.6,<1.1 \
			textproc/ruby-fastercsv,${MODRUBY_FLAVOR}>=1.5.0,<1.6 \
			textproc/ruby-yard,${MODRUBY_FLAVOR} \
			www/ruby-rails,${MODRUBY_FLAVOR}=3.2.13 \
			www/ruby-jquery-rails,${MODRUBY_FLAVOR}>=2.0.2,<2.1

RUN_DEPENDS-extra =	${BASE_PKGPATH},-main

.if ${FLAVOR:Mruby18} || ${FLAVOR:Mruby19} || ${FLAVOR:Mruby20} 
RUN_DEPENDS-main +=	graphics/ruby-rmagick,${MODRUBY_FLAVOR}>=2
.endif

.if ${FLAVOR:Mjruby}
BUILD_DEPENDS +=	lang/jruby>=1.7.0
RUN_DEPENDS-main +=	databases/ruby-activerecord-jdbc-adapter,${MODRUBY_FLAVOR}=1.2.5 \
			databases/ruby-activerecord-jdbcmysql-adapter,${MODRUBY_FLAVOR} \
			databases/ruby-activerecord-jdbcpostgresql-adapter,${MODRUBY_FLAVOR} \
			databases/ruby-activerecord-jdbcsqlite3-adapter,${MODRUBY_FLAVOR}
.else
RUN_DEPENDS-main +=	databases/ruby-pg,${MODRUBY_FLAVOR}>=0.11.0 \
			databases/ruby-sqlite3,${MODRUBY_FLAVOR}
.  if ${FLAVOR:Mruby18}
RUN_DEPENDS-main +=	databases/ruby-mysql,${MODRUBY_FLAVOR}>=2.8.1,<2.9
.  else
RUN_DEPENDS-main +=	databases/ruby-mysql2,${MODRUBY_FLAVOR}>=0.3.11,<0.4
.  endif
.endif

CONFIGURE_STYLE =	none
NO_BUILD =		Yes

# Needs porting and updating a few things
NO_TEST =		Yes

LOCALSTATEDIR =		${BASELOCALSTATEDIR}/redmine
SYSCONFDIR =		${BASESYSCONFDIR}/redmine
REDMINE_WWW =		${WRKINST}/var/www/redmine
SUBST_VARS =		LOCALSTATEDIR RUBY

MODRUBY_ADJ_FILES =	*.rb \
			dispatch.fcgi.example \
			about \
			rails

UNNEDED =		*${PATCHORIG} \
			.*ignore \
			Gemfile.dist \
			config/*.beforesubst \
			config/*${PATCHORIG} \
			files/delete.me \
			log \
			public/plugin_assets \
			test \
			tmp

USER_CONFIGS =		additional_environment.rb \
			configuration.yml \
			database.yml

# We remove extra stuff from Gemfile to allow bundle to run without trying
# to access non-needed gems.
post-extract:
	cp ${WRKSRC}/Gemfile ${WRKSRC}/Gemfile.dist

do-configure:
	sed -E -e '/^group :test/,/^end/d' \
	    <${WRKBUILD}/Gemfile.dist >${WRKBUILD}/Gemfile
	cd ${WRKBUILD} && ${LOCALBASE}/bin/bundle${GEM_BIN_SUFFIX} \
	    install --local --without=test

# 1. Copy the whole tree, zapping unneded stuff;
# 2. Install configuration files, performing substitutions;
# 3. Install symlinks to @sample'd directories (see PLIST-main);
# 4. Change rights for configuration directory and other files.
do-install:
	rm -Rf ${REDMINE} ${REDMINE_WWW}
	cp -R ${WRKBUILD} ${REDMINE}
.for _f in ${USER_CONFIGS}
	${SUBST_CMD} ${REDMINE}/config/${_f}.example
	ln -s ${SYSCONFDIR}/${_f} ${REDMINE}/config/${_f}
.endfor
	cd ${REDMINE} && rm -Rf ${UNNEDED}
	find ${REDMINE} -type f -print0 | xargs -0 chmod ${SHAREMODE}
	@find ${REDMINE}/script -type f -print0 | xargs -0t chmod ${BINMODE}
	chmod o-rwx ${REDMINE}/config
	ln -s /tmp/redmine ${REDMINE}/tmp
	ln -s /var/log/redmine ${REDMINE}/log
	ln -s ${LOCALSTATEDIR}/public/plugin_assets ${REDMINE}/public/plugin_assets
	ln -s ${LOCALSTATEDIR}/schema.rb ${REDMINE}/db/schema.rb
	rm -f ${REDMINE}/Gemfile.lock
	ln -s ${LOCALSTATEDIR}/Gemfile.lock ${REDMINE}/Gemfile.lock
	${SUBST_CMD} -c ${PKGDIR}/redmine.rc ${WRKINST}/etc/rc.d/redmine

.include <bsd.port.mk>
