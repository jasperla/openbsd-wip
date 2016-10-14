# $OpenBSD$

COMMENT =		OpenBSD ports tree as used to build current package set
PKGNAME =		ports-6.0
CATEGORIES =		sysutils
HOMEPAGE =		http://www.openbsd.org/

PERMIT_PACKAGE_CDROM =	Yes

PKG_ARCH =		*
STATIC_PLIST =		No
PREFIX =		/usr

NO_BUILD =		Yes
NO_TEST =		Yes
NO_CHECKSUM =		Yes
ENTRIES =		INDEX \
			Makefile \
			README \
			archivers \
			astro \
			audio \
			base \
			benchmarks \
			biology \
			books \
			cad \
			chinese \
			comms \
			converters \
			databases \
			devel \
			editors \
			education \
			emulators \
			fonts \
			games \
			geo \
			graphics \
			infrastructure \
			inputmethods \
			japanese \
			java \
			korean \
			lang \
			mail \
			math \
			meta \
			misc \
			multimedia \
			net \
			news \
			plan9 \
			print \
			productivity \
			security \
			shells \
			sysutils \
			telephony \
			tests \
			textproc \
			www \
			x11

IGNORED =		distfiles \
			locks \
			logs \
			mystuff \
			openbsd-wip \
			packages \
			plist \
			pobj \
			update

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/ports
	cp -RP ${ENTRIES:%=${PORTSDIR}/%} ${PREFIX}/ports/
	echo '@comment This file has been automatically generated' > ${PLIST}
	echo '@option always-update' >> ${PLIST}
	cd ${PREFIX} && find ${ENTRIES:%=ports/%} | \
					grep -Ev '/CVS(/.+)?$$' >> ${PLIST}
	echo '@group wsrc' >> ${PLIST}
	echo '@mode 0664' >> ${PLIST}
.for f in ${IGNORED}
	echo 'ports/$f' >> ${PLIST}
.endfor

.include <bsd.port.mk>
