helperdir = $(datadir)/PackageKit/helpers/openbsd/OpenBSD/PackageKit/

NULL =

SUBDIRS = Pkg

dist_helper_DATA =	\
	Categories.pm	\
	DBIModel.pm	\
	Pkg.pm		\
	Tools.pm
	$(NULL)

clean-local :
	rm -f *~


-include $(top_srcdir)/git.mk
