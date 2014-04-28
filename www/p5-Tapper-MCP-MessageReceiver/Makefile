# $OpenBSD$

COMMENT =	message receiver for Tapper MCP

MODULES =	cpan
DISTNAME =	Tapper-MCP-MessageReceiver-4.1.3
CATEGORIES =	www

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Log-Log4perl \
		devel/p5-Module-Find \
		devel/p5-Test-Fixture-DBIC-Schema \
		devel/p5-YAML-Syck \
		www/p5-Mojo \
		www/p5-Tapper-Config \
		www/p5-Tapper-Model \
		www/p5-Tapper-Schema

BUILD_DEPENDS =	${RUN_DEPENDS}

TEST_DEPENDS =	databases/p5-DBIx-Class-InflateColumn-Object-Enum \
		databases/p5-DBIx-Class-TimeStamp

LOG =		tapper-debug-mcp-messagereceiver_user.log \
		tapper_mcp_reset_mcp-messagereceiver_user.log \
		tapper_message_receiver_daemon_mcp-messagereceiver_user.log \
		tapper_reports_receiver_daemon_mcp-messagereceiver_user.log

post-install:
.for l in ${LOG}
	touch /var/log/${l}
	chown mcp-messagereceiver_user:tapper /var/log/${l}
.endfor

.include <bsd.port.mk>
