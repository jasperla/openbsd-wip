#!/usr/bin/awk -f

BEGIN {
	LIBFILE = ENVIRON["LIBFILE"]
}

/^all:/ {
	print $0, "$(solibrary)"
	next
}

/^library[[:space:]]*=/ {
	print "solibrary = " LIBFILE
}

/^\$\(library\):/ {
	POS = index($0, ":")
	OBJS = substr($0, POS + 1)
}

# do not worry about adding multiple times
/install(-lib)?:/, /^$/ {
	if ($0 == "")
		print "\t$(INSTALL_DATA) $(solibrary) $(libdir)/$(solibrary)"
}

{
	print
}

END {
	print "$(solibrary):" OBJS
	print "\t$(CXX) -shared -fPIC $(LDFLAGS) -o $@ " OBJS
}
