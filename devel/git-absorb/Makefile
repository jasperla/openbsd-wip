COMMENT =	git command for automating fixup/autosquash commits

GH_ACCOUNT =	tummychow
GH_PROJECT =	git-absorb
GH_TAGNAME =	0.9.0

CATEGORIES =	devel

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# BSD-3
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODCARGO_WANTLIB} git2

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

BUILD_DEPENDS =	textproc/asciidoc
LIB_DEPENDS =	devel/libgit2/libgit2

# post-build:
# 	cd ${WRKSRC}/Documentation && a2x -L -d manpage -f manpage git-absorb.adoc

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/git-absorb ${PREFIX}/bin/
	# ${INSTALL_MAN}     ${WRKSRC}/Documentation/git-absorb.1 ${PREFIX}/man/man1

.include "crates.inc"

.include <bsd.port.mk>
