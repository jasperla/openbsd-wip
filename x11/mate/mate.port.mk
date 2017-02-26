# $OpenBSD$
#
# Module for MATE related ports

.if (defined(MATE_PROJECT) && defined(MATE_VERSION))
PORTROACH+=		limitw:1,even
DISTNAME=		${MATE_PROJECT}-${MATE_VERSION}
VERSION=		${MATE_VERSION}
HOMEPAGE?=		http://mate-desktop.com/
MASTER_SITES?=		http://pub.mate-desktop.org/releases/${MATE_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/
EXTRACT_SUFX?=		.tar.xz
CATEGORIES+=		x11/mate
.    if ${NO_BUILD:L} == "no"
MODULES+=		textproc/intltool
USE_GMAKE?=		Yes
.    endif
.endif

.if ${CONFIGURE_STYLE:Mgnu} || ${CONFIGURE_STYLE:Msimple}
     # https://mail.gnome.org/archives/desktop-devel-list/2011-September/msg00064.html
.    if !defined(AUTOCONF_VERSION) && !defined(AUTOMAKE_VERSION)
         CONFIGURE_ARGS += --disable-maintainer-mode
.    endif
     # If a port needs extra CPPFLAGS, they can just set MODMATE_CPPFLAGS
     # to the desired value, like -I${X11BASE}/include
     _MODMATE_cppflags ?= CPPFLAGS="${MODMATE_CPPFLAGS} -I${LOCALBASE}/include"
     _MODMATE_ldflags ?= LDFLAGS="${MODMATE_LDFLAGS} -L${LOCALBASE}/lib"
     CONFIGURE_ENV += ${_MODMATE_cppflags} \
                      ${_MODMATE_ldflags}
.endif

# Use MODMATE_TOOLS to indicate certain tools are needed for building bindings
# or for ensuring documentation is available. If an option is not set, it's
# explicitly disabled.
# Currently supported tools are:
# * desktop-file-utils: Use this if there are .desktop files under
#                       share/applications/. This also requires the following
#                       go in PLIST:
#                       @exec %D/bin/update-desktop-database
#                       @unexec-delete %D/bin/update-desktop-database
# * docbook: Build man pages with docbook.
# * gobject-introspection: Build and enable GObject Introspection data.
# * gtk-update-icon-cache: Enable if there are icon files under share/icons/.
#                          Requires the following goo in PLIST (adapt
#                          $icon-theme accordingly):
#                          @exec %D/bin/gtk-update-icon-cache -q -t %D/share/icons/$icon-theme
#                          @unexec-delete %D/bin/gtk-update-icon-cache -q -t %D/share/icons/$icon-theme
# * shared-mime-info: Enable if there are .xml files under share/mime/.
#                     Requires the following goo in PLIST:
#                     @exec %D/bin/update-mime-database %D/share/mime
#                     @unexec-delete %D/bin/update-mime-database %D/share/mime

MODMATE_CONFIGURE_ARGS_gi=--disable-introspection
MODMATE_CONFIGURE_ARGS_gtkdoc=--disable-gtk-doc --disable-docbook-docs

.if defined(MODMATE_TOOLS)
_VALID_TOOLS=desktop-file-utils docbook gobject-introspection \
    gtk-update-icon-cache shared-mime-info
.   for _t in ${MODMATE_TOOLS}
.       if !${_VALID_TOOLS:M${_t}}
ERRORS += "Fatal: unknown MODMATE_TOOLS option: ${_t}\n(not in ${_VALID_TOOLS})"
.       endif
.   endfor

.   if ${MODMATE_TOOLS:Mdesktop-file-utils}
        MODMATE_RUN_DEPENDS+=	devel/desktop-file-utils
        MODMATE_pre-configure += ln -sf /usr/bin/true ${WRKDIR}/bin/appstream-util;
        MODMATE_pre-configure += ln -sf /usr/bin/true ${WRKDIR}/bin/desktop-file-validate;
.   endif

.   if ${MODMATE_TOOLS:Mdocbook}
        MODMATE_BUILD_DEPENDS+=textproc/docbook-xsl
.   endif

.   if ${MODMATE_TOOLS:Mgobject-introspection}
        MODMATE_CONFIGURE_ARGS_gi=--enable-introspection
        MODMATE_BUILD_DEPENDS+=devel/gobject-introspection
.   endif

.   if ${MODMATE_TOOLS:Mgtk-update-icon-cache}
        MODMATE_RUN_DEPENDS+=	x11/gtk+3,-guic
.   endif

.   if ${MODMATE_TOOLS:Mshared-mime-info}
        MODMATE_RUN_DEPENDS+=	misc/shared-mime-info
        MODMATE_pre-configure += ln -sf /usr/bin/true ${WRKDIR}/bin/update-mime-database;
.   endif
.endif

.if ${CONFIGURE_STYLE:Mgnu} || ${CONFIGURE_STYLE:Msimple}
CONFIGURE_ARGS+=${MODMATE_CONFIGURE_ARGS_gi}
CONFIGURE_ARGS+=${MODMATE_CONFIGURE_ARGS_gtkdoc}
.endif

.if defined(MODMATE_BUILD_DEPENDS)
BUILD_DEPENDS+=		${MODMATE_BUILD_DEPENDS}
.endif

.if defined(MODMATE_RUN_DEPENDS)
RUN_DEPENDS+=		${MODMATE_RUN_DEPENDS}
.endif
