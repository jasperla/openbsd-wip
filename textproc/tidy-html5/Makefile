# $OpenBSD$

COMMENT =		corrects and cleans up HTML and XML documents
GH_ACCOUNT =		htacg
GH_PROJECT =		tidy-html5
GH_TAGNAME =		5.4.0
SHARED_LIBS +=		tidy 0.0 # 5.2
CATEGORIES =		textproc devel
HOMEPAGE =		http://www.html-tidy.org/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# custom vague BSD-style license
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c
MODULES =		devel/cmake
BUILD_DEPENDS =		textproc/libxslt,-main

CONFIGURE_ARGS =	-DMAN_INSTALL_DIR=man/man1

NO_TEST =		Yes

post-extract:
	@find ${WRKSRC} -type f -exec sed -i '/﻿/s///' {} +

.include <bsd.port.mk>
