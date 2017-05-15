# $OpenBSD: Makefile,v 1.5 2016/08/13 08:42:22 jasper Exp $

COMMENT =		wraps git in order to extend it with extra features

GH_ACCOUNT =		github
GH_PROJECT =		hub
GH_TAGNAME =		v2.3.0-pre8

CATEGORIES =		devel

HOMEPAGE =		https://hub.github.com

MAINTAINER =		Fabian Raetz <fabian.raetz@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MODULES =		lang/go

MODGO_ENV=		PATH="${PORTPATH}" CFLAGS="${CFLAGS}"

BUILD_DEPENDS =		textproc/ruby-ronn,ruby23
RUN_DEPENDS =		devel/git

MANUALS =		hub-alias \
			hub-am \
			hub-apply \
			hub-browse \
			hub-checkout \
			hub-cherry-pick \
			hub-ci-status \
			hub-clone \
			hub-compare \
			hub-create \
			hub-fetch \
			hub-fork \
			hub-help \
			hub-init \
			hub-issue \
			hub-merge \
			hub-pull-request \
			hub-push \
			hub-release \
			hub-remote \
			hub-submodule \
			hub-sync
RFLAGS =		-r --pipe --organization=GITHUB --manual="Hub Manual"

post-install:
	ronn23 ${RFLAGS} ${WRKSRC}/share/man/man1/hub.1.ronn \
			> ${PREFIX}/man/man1/hub.1
.for m in ${MANUALS}
	${PREFIX}/bin/hub help $m --plain-text | ronn23 ${RFLAGS} \
			> ${PREFIX}/man/man1/$m.1
.endfor

.include <bsd.port.mk>
