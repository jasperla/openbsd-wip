# $OpenBSD: Makefile,v 1.3 2013/03/11 11:20:27 espie Exp $

COMMENT=		modern approach to programming for the Erlang VM

V=			1.0.2
GH_ACCOUNT=		elixir-lang
GH_PROJECT=		elixir
GH_TAGNAME=		v$V
DISTNAME=		${GH_PROJECT}-$V
CATEGORIES=		lang

HOMEPAGE=		http://elixir-lang.org/

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		devel/rebar \
			lang/erlang>=17.4v0
RUN_DEPENDS=		lang/erlang>=17.4v0

ALL_TARGET=		# empty
USE_GMAKE=		Yes

SUBST_VARS+=		V

TEST_TARGET=		test

.include <bsd.port.mk>
