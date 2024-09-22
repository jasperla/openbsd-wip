COMMENT =	tool and decoders for working with binary and text formats

V =		0.13.0

MODGO_MODNAME =	github.com/wader/fq
MODGO_VERSION =	v${V}

DISTNAME =	fq-${V}

CATEGORIES =	sysutils textproc

HOMEPAGE =	https://github.com/wader/fq

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

# For tests with jq pkg/interp/*.jq.test
TEST_DEPENDS +=	textproc/jq

do-test:
	cd ${WRKSRC} && ${MODGO_TEST_CMD} \
		github.com/wader/fq/format \
		github.com/wader/fq/format/postgres/common \
		github.com/wader/fq/format/tls/keylog \
		github.com/wader/fq/internal/aheadreadseeker \
		github.com/wader/fq/internal/ansi \
		github.com/wader/fq/internal/asciiwriter \
		github.com/wader/fq/internal/ctxreadseeker \
		github.com/wader/fq/internal/ctxstack \
		github.com/wader/fq/internal/hexdump \
		github.com/wader/fq/internal/hexpairwriter \
		github.com/wader/fq/internal/lazyre \
		github.com/wader/fq/internal/mathx \
		github.com/wader/fq/internal/recoverfn \
		github.com/wader/fq/internal/shquote \
		github.com/wader/fq/pkg/bitio \
		github.com/wader/fq/pkg/interp \
		github.com/wader/fq/pkg/ranges

# Tests with jq
.for f in args funcs query
	@echo "${f}.jq.test:"
	@cd ${WRKSRC} && ${MODGO_WORKSPACE}/bin/fq -rRs -L pkg/interp \
		'include "jqtest"; run_tests' pkg/interp/${f}.jq.test
.endfor

.include "modules.inc"

.include <bsd.port.mk>
