# $OpenBSD: Makefile,v 1.6 2013/10/26 23:55:36 jeremy Exp $

COMMENT =		ruby framework for Behaviour Driven Development
V =			2.14.1
DISTNAME =		rspec-$V
REVISION =		1

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS = 		devel/ruby-rspec/2/core,${MODRUBY_FLAVOR}>=$V \
			devel/ruby-rspec/2/expectations,${MODRUBY_FLAVOR}>=2.14.0 \
			devel/ruby-rspec/2/mocks,${MODRUBY_FLAVOR}>=$V

SUBST_VARS =		MODRUBY_PREFIX

.include <bsd.port.mk>
