# $OpenBSD$

COMMENT =	manual tiling window manager
DISTNAME =	herbstluftwm-0.5.3
CATEGORIES =	x11

HOMEPAGE =	http://herbstluftwm.org/download.html
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xext Xinerama c glib-2.0 pthread

MASTER_SITES =	http://herbstluftwm.org/tarballs/

MODULES =	devel/gettext

LIB_DEPENDS =	devel/glib2

RUN_DEPENDS =	devel/desktop-file-utils \
		shells/bash

USE_GMAKE =	Yes
MAKE_FLAGS =	CC="${CC}" LDFLAGS= VERBOSE= COLOR=0

BASEDIR =	${LOCALBASE}/share/examples/herbstluftwm
FAKE_FLAGS =	SYSCONFDIR="${BASEDIR}" \
		EXAMPLESDIR="${BASEDIR}" \
		ZSHCOMPLETIONDIR="${BASEDIR}/zsh/functions/Completion/X" \
		MANDIR="${LOCALBASE}/man" \
		XSESSIONSDIR="${LOCALBASE}/share/applications"

NO_TEST =	Yes

post-patch:
	perl -pi -e "s,^#!/bin/bash,#!/usr/bin/env bash,g" \
		`grep -Rl /bin/bash ${WRKSRC}/*`

.include <bsd.port.mk>
