# $OpenBSD$

PKG_ARCH ?=		*

MODULES +=			lang/ruby
MODRUBY_HANDLE_FLAVORS ?=	Yes

# XXX to be kept in sync with ruby.port.mk
FLAVOR ?=		ruby19

MODREDMINE_RAILS_ENV ?=	production
MODREDMINE_ROOT_DIR =	${PREFIX}/share/redmine
REDMINE =		${MODREDMINE_ROOT_DIR}
SUBST_VARS +=		RAKE REDMINE MODREDMINE_RAILS_ENV

.if defined(MODREDMINE_PLUGIN)
# Remember to add the following to PLIST:
# @exec cd ${REDMINE} && ${RAKE} redmine:plugins:migrate RAILS_ENV=${MODREDMINE_RAILS_ENV} >/dev/null

CATEGORIES +=		www/redmine
RUN_DEPENDS +=		www/redmine,${MODRUBY_FLAVOR}

NO_BUILD =		Yes
CONFIGURE_STYLE =	none
WRKDIST ?=		${WRKDIR}/${MODREDMINE_PLUGIN}

_MODREDMINE_PLUGIN_DIR =	${REDMINE}/plugins/${MODREDMINE_PLUGIN}

do-install:
	${INSTALL_DATA_DIR} ${REDMINE}/plugins
	rm -Rf ${_MODREDMINE_PLUGIN_DIR}
	cp -R ${WRKBUILD} ${_MODREDMINE_PLUGIN_DIR}
	find ${_MODREDMINE_PLUGIN_DIR} -name '*.orig' -print0 | \
	    xargs -0tr rm --
.endif
