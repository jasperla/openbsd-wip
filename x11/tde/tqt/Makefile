# $OpenBSD$

COMMENT =		Trinity Qt Interface

DISTNAME =		tqtinterface-${TDE_V}

SHARED_LIBS +=		tqassistantclient         0.0 # 4.2
SHARED_LIBS +=		tqt                       0.0 # 4.2

WANTLIB +=		m stdc++

MASTER_SITES =		${MASTER_SITE_TDE:=dependencies/}

RUN_DEPENDS =		shells/bash \
			textproc/gsed

CONFIGURE_ARGS +=	-DQT_VERSION=3 \
			-DQT_PREFIX_DIR="${LOCALBASE}" \
			-DMOC_EXECUTABLE="${MODQT3_MOC}" \
			-DUIC_EXECUTABLE="${MODQT3_UIC}" \
			-DQT_INCLUDE_DIR="${MODQT3_INCDIR}" \
			-DQT_LIBRARY_DIR="${MODQT3_LIBDIR}"

WRKDIST =		${WRKDIR}/dependencies/tqtinterface

post-install:
	cd ${PREFIX}/bin && perl -pi -e \
		"s,^#!.*/bin/bash,#!${LOCALBASE}/bin/bash," * && perl -pi -e \
		"s,sed,gsed,g" *

.include <bsd.port.mk>
