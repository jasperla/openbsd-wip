# $OpenBSD$

COMMENT =	powerful and user-friendly console text editor
DISTNAME =	moe-1.6-rc4
PKGNAME =	moe-1.6
EXTRACT_SUFX =	.tar.lz
CATEGORIES =	editors

HOMEPAGE =	http://www.gnu.org/software/moe/moe.html
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ncurses stdc++

MASTER_SITES =	${MASTER_SITE_SAVANNAH:=moe/}

CONFIGURE_STYLE =	simple

MAKE_FLAGS =	CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS}" \
		sysconfdir="${SYSCONFDIR}"	# to use the correct global startup

FAKE_FLAGS =	sysconfdir="${LOCALBASE}/share/examples/moe" \
		mandir="${LOCALBASE}/man"

NO_TEST =	Yes

.include <bsd.port.mk>
