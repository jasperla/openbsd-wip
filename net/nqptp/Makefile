COMMENT =		Not Quite PTP
# https://github.com/mikebrady/nqptp/pull/31 "Support OpenBSD" on 27.01.2024 HEAD
#DIST_TUPLE =		github	mikebrady	nqptp	1.2.4	.
DIST_TUPLE =		github	klemensn	nqptp	1.2.5pl1	.
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
