Several of these patches to build with python 3.12 came from nixos
https://github.com/NixOS/nixpkgs/tree/master/pkgs/development/python-modules/pyside2

This is required for cad/freecad

Some issues:

Wants to link to libclang, so needs ports-clang

Probably the depends are wrong, I had things on my laptop already
and haven't tried it "clean" yet.

Requires ports/x11/qt5/qtbase to be patched with x11-qt5-qtbase.patch
https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=270715
