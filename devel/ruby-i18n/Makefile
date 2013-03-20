# $OpenBSD$

COMMENT =	Ruby internationalization and localization solution

DISTNAME =	i18n-0.6.1
CATEGORIES =	devel

# MIT License
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

RUN_DEPENDS =	${MODRUBY_ICONV_DEPENDS}

#BUILD_DEPENDS = converters/ruby-multi_json,${MODRUBY_FLAVOR}>=1.0,<2.0
#RUN_DEPENDS =	${MODRUBY_ICONV_DEPENDS} \
#		converters/ruby-multi_json,${MODRUBY_FLAVOR}>=1.0,<2.0

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
