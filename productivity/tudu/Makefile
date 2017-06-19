# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	hierarchical todos manager

DISTNAME =	tudu-0.10.2

CATEGORIES =	productivity

HOMEPAGE =	https://code.meskio.net/tudu/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m ncursesw ${LIBCXX}

MASTER_SITES =	${HOMEPAGE}

CONFIGURE_STYLE = simple

CONFIGURE_ARGS = --sysconfdir=${SYSCONFDIR} \
		 --mandir=${PREFIX}/man

FAKE_FLAGS =	SYSCONFDIR=${TRUEPREFIX}/share/examples/tudu

NO_TEST =	Yes

pre-configure:
	# Disable locale("") calls, they segfault in the UTF-8 locale
	@sed -i 's,.*locale(""));,,g' ${WRKSRC}/src/*.cc

.include <bsd.port.mk>
