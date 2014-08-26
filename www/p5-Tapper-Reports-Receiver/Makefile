# $OpenBSD$

COMMENT =	receiver for Tapper test reports as TAP or TAP::Archive

MODULES =	cpan
DISTNAME =	Tapper-Reports-Receiver-4.1.3
CATEGORIES =	www

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-AnyEvent \
		devel/p5-Data-DPath \
		devel/p5-Data-Dumper-Simple \
		devel/p5-DateTime-Format-Natural \
		devel/p5-Devel-Backtrace \
		devel/p5-File-MimeInfo \
		devel/p5-IO-String \
		devel/p5-LockFile-Simple \
		devel/p5-Log-Log4perl \
		devel/p5-Module-Find>=0.11 \
		devel/p5-Moose \
		devel/p5-MooseX-Log-Log4perl \
		devel/p5-MooseX-Daemonize \
		devel/p5-Scalar-List-Utils \
		devel/p5-Try-Tiny \
		devel/p5-YAML-Syck \
		sysutils/p5-Sys-Syslog \
		www/p5-Tapper-Base \
		www/p5-Tapper-Config \
		www/p5-Tapper-Model \
		www/p5-Tapper-Schema \
		www/p5-Tapper-TAP-Harness

BUILD_DEPENDS =	devel/p5-Class-C3 \
		devel/p5-DateTime-Format-Mail \
		devel/p5-File-Slurp \
		devel/p5-MRO-Compat \
		devel/p5-Test-Deep \
		devel/p5-Test-Simple \
		devel/p5-Test-Fixture-DBIC-Schema \
		www/p5-HTTP-Daemon \
		www/p5-Tapper-Schema

LOG =		tapper_message_receiver_daemon_reports-receiver_user.log \
		tapper-debug-reports-receiver_user.log \
		tapper_mcp_reset_reports-receiver_user.log \
		tapper_reports_receiver_daemon_reports-receiver_user.log

post-install:
.for l in ${LOG}
	touch /var/log/${l}
	chown mcp-messagereceiver_user:tapper /var/log/${l}
.endfor

.include <bsd.port.mk>
