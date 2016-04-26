# $OpenBSD$

COMMENT =		ports tree used to build this package set
PKG_ARCH = *
DISTNAME =		ports-snapshot-1
DISTFILES =
CATEGORIES =		databases
HOMEPAGE =		http://www.openbsd.org/

# BSD
PERMIT_PACKAGE_CDROM =	already there
PERMIT_PACKAGE_FTP =	Yes

PLIST =			${WRKINST}/plist
STATIC_PLIST =		No

NO_CHECKSUM =		Yes
NO_BUILD =		Yes
NO_TEST =		Yes

PATHS = .cvsignore CVS INDEX Makefile README archivers astro audio base \
	benchmarks biology books cad chinese comms converters databases devel \
	editors education emulators fonts games geo graphics infrastructure \
	inputmethods japanese java korean lang mail math meta misc multimedia \
	net news plan9 print productivity security shells sysutils telephony \
	tests textproc www x11

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/ports
.for item in ${PATHS}
	cp -RP ${PORTSDIR}/${item} ${PREFIX}/ports
.endfor
	cd ${PREFIX} && find ports -type f >${WRKINST}/list1
	cd ${PREFIX} && find ports -type d | sed -e 's,$$,/,' > ${WRKINST}/list2
	{ \
		echo "@comment This file has been automatically generated"; \
		echo "@option always-update"; \
		sort ${WRKINST}/list[12]; \
	} >${PLIST}

.include <bsd.port.mk>
