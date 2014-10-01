# $OpenBSD: Makefile.template,v 1.68 2013/10/02 07:34:45 ajacoutot Exp $

COMMENT =		web end of seafile server

GH_PROJECT = 		seahub
GH_TAGNAME = 		v3.1.6-server-testing
GH_COMMIT = 		800774b6ef4a9feeb00b8fe681c519c10c62c3d9

# Apache
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
RUN_DEPENDS =		devel/py-six \
			net/seafile/seafile,-server \
			www/py-django-restframework \
			www/py-django-registration \
			www/py-django-simple-captcha \
			www/py-gunicorn

NO_BUILD = 		Yes
MODPY_ADJ_FILES = 	manage.py seahub/po.py seahub/shortcuts.py \
			tools/seahub-admin.py tools/secret_key_generator.py

do-install:
	${INSTALL_DATA_DIR} ${MODPY_SITEPKG}/seahub/
	cd ${WRKSRC}/seahub && find * -type d -exec ${INSTALL_DATA_DIR} \
		"${WRKINST}${MODPY_SITEPKG}/seahub/{}" \;
	cd ${WRKSRC}/seahub && find * -type f -exec ${INSTALL_DATA} \
		"{}" "${WRKINST}${MODPY_SITEPKG}/seahub/{}" \;
	${INSTALL_SCRIPT} ${WRKSRC}/manage.py ${PREFIX}/bin/seahub-manage

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${WRKINST}/${MODPY_SITEPKG}/seahub/

.include <bsd.port.mk>
