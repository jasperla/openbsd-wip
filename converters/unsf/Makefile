# $OpenBSD$

COMMENT =	convert SoundFont sf2 files into GUS patchsets
DISTNAME =	unsf-1.1
CATEGORIES =	converters audio

GH_ACCOUNT =	psi29a
GH_PROJECT =	unsf
GH_COMMIT =	146a0e37eb2f384125613856ee0a0059e59dae58

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# CC0-1.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m

MAKE_FILE =	Makefile.linux
MAKE_FLAGS =	CFLAGS="${CFLAGS} -std=gnu99"

NO_TEST =	Yes

# Upstream install target forgets the man page.
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/unsf ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/unsf.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
