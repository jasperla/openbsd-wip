# $OpenBSD$

COMMENT =	add a metaclass method to all Ruby objects

DISTNAME =	metaclass-0.0.1
CATEGORIES =	devel

HOMEPAGE =	http://github.com/floehopper/metaclass

# MIT License
PERMIT_PACKAGE_CDROM =   Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	${MODRUBY_RAKE_DEPENDS}

CONFIGURE_STYLE = ruby gem

# Tests can be run in source Git repository only
NO_TEST =	Yes

post-extract:
	rm ${WRKSRC}/.gitignore

.include <bsd.port.mk>
