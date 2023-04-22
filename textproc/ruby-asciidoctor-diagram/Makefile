COMMENT =	asciidoctor extension for various diagram types

DISTNAME =	asciidoctor-diagram-2.2.3

CATEGORIES =	textproc

MAINTAINER =	Stefan Hagen <sh+ports@codevoid.de>

HOMEPAGE =	https://github.com/asciidoctor/asciidoctor-diagram

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		textproc/ruby-asciidoctor-diagram-ditaamini,${MODRUBY_FLAVOR} \
			textproc/ruby-asciidoctor-diagram-plantuml,${MODRUBY_FLAVOR}

RUN_DEPENDS =		textproc/ruby-asciidoctor-diagram-ditaamini,${MODRUBY_FLAVOR} \
			textproc/ruby-asciidoctor-diagram-plantuml,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
