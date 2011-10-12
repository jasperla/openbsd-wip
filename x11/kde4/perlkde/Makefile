# $OpenBSD$

COMMENT =	KDE 4 bindings for Perl
DISTNAME =	perlkde-${MODKDE_VERSION}

LIB_DEPENDS = 	x11/kde4/kate \
		x11/kde4/libs \
		x11/kde4/perlqt \
		x11/kde4/smokekde

WANTLIB += c m perl stdc++ util
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtSql lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += kdecore
WANTLIB += smokeattica smokebase smokekate smokekdecore smokekdeui
WANTLIB += smokekfile smokekhtml smokekio smokeknewstuff2 smokeknewstuff3
WANTLIB += smokekparts smokektexteditor smokekutils smokenepomuk
WANTLIB += smokenepomukquery smokeokular smokeplasma smokeqtcore
WANTLIB += smokeqtdbus smokeqtgui smokeqtnetwork smokesolid smokesoprano
WANTLIB += smokesopranoclient smokesopranoserver

# Disable until KDE Smoke bug 283677 gets fixed,
# https://bugs.kde.org/show_bug.cgi?id=283677
CONFIGURE_ARGS +=	-DBUILD_Akonadi:Bool=False

# Avoid clashing Perl do_open and do_close with GCC's locale_facets.h
post-patch:
	@echo "====>  Removing extra Perl defines from:" >&2
	@cd ${WRKSRC} && find . -name '*.cpp' | sort | while read F; do \
		awk -f ${FILESDIR}/undefperl.awk <"$$F" >"$$F".undef || exit 1; \
		if cmp -s "$$F" "$$F".undef; then \
			rm "$$F".undef; \
		else \
			echo "\\t$${F#./}" >&2; \
			cp "$$F" "$$F".beforeundef && mv "$$F".undef "$$F"; \
		fi \
	done

.include <bsd.port.mk>
