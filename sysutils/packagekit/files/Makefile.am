INCLUDES = \
	-DG_LOG_DOMAIN=\"PackageKit-OpenBSD-Ports\"

helperdir = $(datadir)/PackageKit/helpers/openbsd-ports
dist_helper_DATA = openbsd-ports-backend.sh

plugindir = $(PK_PLUGIN_DIR)
plugin_LTLIBRARIES = libpk_backend_openbsd-ports.la
libpk_backend_openbsd_ports_la_SOURCES = pk-backend-openbsd-ports.c
libpk_backend_openbsd_ports_la_LIBADD = $(PK_PLUGIN_LIBS)
libpk_backend_openbsd_ports_la_LDFLAGS = -module -avoid-version
libpk_backend_openbsd_ports_la_CFLAGS = $(PK_PLUGIN_CFLAGS) $(WARNINGFLAGS_C)

install-data-hook:
	chmod a+rx $(DESTDIR)$(helperdir)/*.sh

clean-local :
	rm -f *~

-include $(top_srcdir)/git.mk
