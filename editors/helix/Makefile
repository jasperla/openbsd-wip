COMMENT =	post-modern modal text editor

GH_ACCOUNT =	helix-editor
GH_PROJECT =	helix
GH_TAGNAME =	22.08.1

CATEGORIES =	editors

HOMEPAGE =	https://helix-editor.com

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MPL-2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	c c++abi m pthread

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=	${DISTNAME}${EXTRACT_SUFX}

MODULES =	devel/cargo

.include "crates.inc"

CONFIGURE_STYLE =       cargo

SEPARATE_BUILD =        Yes

post-patch:
	grep -F -Rl '%%DATADIR%%' ${WRKSRC} | xargs sed -i \
		's,%%DATADIR%%,${PREFIX}/share/helix,'

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/hx ${PREFIX}/bin/

# TODO
# post-install:
# Fetch grammars with `hx --grammar fetch`
# Build grammars with `hx --grammer build`
# instalL *.so from runtime/grammars/ => ${PREFIX}/share/helix/runtime/

.include <bsd.port.mk>
