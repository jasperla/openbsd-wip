# $OpenBSD$

COMMENT =	jQuery and the jQuery-ujs drivers for Rails 3

DISTNAME =	jquery-rails-2.0.3
CATEGORIES =	www

# MIT License
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/ruby-railties,${MODRUBY_FLAVOR}>=3,<5 \
		sysutils/ruby-thor,${MODRUBY_FLAVOR}>=0.14,<2

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake

post-install:
	rm ${PREFIX}/${GEM_LIB}/gems/${DISTNAME}/.gitignore

.include <bsd.port.mk>
