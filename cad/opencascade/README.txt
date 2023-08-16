This is a new port of OpenCascade, replacing the older oce one, built using
the official tarball direct from opencascade.

Compiles on amd64. 

Note: opencascade conflicts with the already available oce port.
Remove oce first, before compiling. If you ultimately import this,
be sure to add a quirk to inform users about this.
