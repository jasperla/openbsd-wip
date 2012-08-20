#!/bin/sh
cd %%LOCALBASE%%/share/sauerbraten
exec %%LOCALBASE%%/libexec/sauer_client -q${HOME}/.sauerbraten -r "$@"
