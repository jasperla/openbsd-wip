# $OpenBSD$

EV =			1.2.1
JV =			0.1.2
GH_ACCOUNT =		elastic
GH_PROJECT =		beats
GH_TAGNAME =		v${EV}

COMMENT =		lightweight shippers

CATEGORIES =		sysutils

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

MASTER_SITES0 =		https://github.com/jasperla/hwsensorsbeat/archive/${JV}/
DISTFILES =		${DISTNAME}{${GH_TAGNAME}}${EXTRACT_SUFX} \
			hwsensorsbeat-${JV}${EXTRACT_SUFX}
# Apachev2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c pthread

MODULES +=	     	lang/go

MODGO_ENV =		PATH=${PORTPATH} CFLAGS="${CFLAGS}" \
			GO15VENDOREXPERIMENT=1

HOMEPAGE =		https://www.elastic.co/products/beats \
			https://github.com/jasperla/hwsensorsbeat

ALL_TARGET =		github.com/elastic/beats/filebeat \
			github.com/elastic/beats/packetbeat \
			github.com/elastic/beats/topbeat \
			github.com/jasperla/hwsensorsbeat

VENDORS =		github.com/Shopify github.com/dustin \
			github.com/eapache github.com/golang golang.org/x/net \
			github.com/klauspost github.com/satori github.com/urso

CONFIGS-filebeat =	filebeat.yml filebeat.template.json README.md
CONFIGS-hwsensorsbeat =	hwsensorsbeat.yml hwsensorsbeat.template.json
CONFIGS-packetbeat =	packetbeat.yml packetbeat.template.json
CONFIGS-topbeat =	topbeat.yml topbeat.template.json

# XXX: Remove on upgrade
# https://github.com/elastic/gosigar/pull/22
post-extract:
	cp ${FILESDIR}/sigar_openbsd.go ${WRKDIST}/vendor/github.com/elastic/gosigar

post-patch:
	mkdir -p ${MODGO_WORKSPACE}
	mv ${WRKDIR}/${DISTNAME}/vendor ${MODGO_WORKSPACE}/src
	${MODGO_SETUP_WORKSPACE}
.for vendor in ${VENDORS}
	mv ${WRKDIR}/hwsensorsbeat-${JV}/vendor/${vendor} \
		${MODGO_WORKSPACE}/src/${vendor:H}
.endfor
	rm -R ${WRKDIR}/hwsensorsbeat-${JV}/vendor
	mkdir -p ${MODGO_WORKSPACE}/src/github.com/jasperla
	mv ${WRKDIR}/hwsensorsbeat-${JV} \
		${MODGO_WORKSPACE}/src/github.com/jasperla/hwsensorsbeat

post-install:
.for b in ${ALL_TARGET}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${b:T}
. for c in ${CONFIGS-${b:T}}
	cp ${MODGO_WORKSPACE}/src/$b/etc/$c ${PREFIX}/share/examples/${b:T}/
. endfor
.endfor

.include <bsd.port.mk>
