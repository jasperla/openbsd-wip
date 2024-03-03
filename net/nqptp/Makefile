COMMENT =		Not Quite PTP

# 25.02.2024 for merged patches
C =			5cd5e6e52a9a4dd30181a48d08e675f9b851b314
DIST_TUPLE =		github	mikebrady	nqptp	${C}	.
PKGNAME =		nqptp-1.2.5pre1
CATEGORIES =		net

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		c pthread

CONFIGURE_STYLE =	autoreconf
SEPARATE_BUILD =	Yes
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

# shm_open(3) prohibits sharing between different UIDs, so nqptp runs as
# the audio/shairport-sync port's user _shairport.

.include <bsd.port.mk>
