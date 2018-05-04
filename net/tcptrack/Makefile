# $OpenBSD$

COMMENT =	sniffer which displays information about TCP connections
CATEGORIES =	net

GH_ACCOUNT =	bchretien
GH_PROJECT =	tcptrack
GH_TAGNAME =	v1.4.3

MAINTAINER =	Scripter on Daemonforums <your@email.here>
#MAINTAINER =	Your Name <your@email.here>

# Repo has a copy of LGPLv2.1
# But some source files (src/main.cc) say it's GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} c curses m pcap

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
