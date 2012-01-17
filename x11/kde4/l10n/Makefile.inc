# $OpenBSD$

COMMENT =		KDE4 localization pack for ${KDE_L10N_LANG} language
DISTNAME =		kde-l10n-${KDE_L10N_LANG}-${MODKDE_VERSION}

MODKDE4_RESOURCES =	Yes
MODKDE4_USE =		libs

RUN_DEPENDS =	x11/gtk+2,-guic

MASTER_SITES =	${MASTER_SITE_KDE:=unstable/${MODKDE_VERSION}/src/kde-l10n/}

SUBST_VARS =	KDE_L10N_LANG
PKGDIR =	${.CURDIR}/../pkg
DESCR =		${PKGDIR}/DESCR
PLIST =		${PKGDIR}/PLIST-${KDE_L10N_LANG}

MODULES =	devel/gettext
NO_REGRESS =	Yes
CONFIGURE_ENV =	CFLAGS=-I${PREFIX}/include \
		LDFLAGS="-pthread -L${PREFIX}/lib -liconv -lintl"

# XXX have to do this manually here...
.include "${.CURDIR}/../../Makefile.inc"
