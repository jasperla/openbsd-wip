This is a new port of OpenCascade, replacing the older oce one, built using
the official tarball direct from opencascade.

Right now this port builds the first few thousand files, but dies on X11
because we install X includes in a non-standard location. There are about 8 files
that need patching, unless one can set up a symlink trick or something to avoid
patching.

If you ultimately import this, be sure to add a quirk from the oce to the opencascade
port.
