#!/usr/bin/env python2.7
import os
import sys
import subprocess
from collections import defaultdict


LOCALBASE = "/usr/local"
PORTS_TREE = "/usr/ports"
PLIST_DIR = os.path.join(PORTS_TREE, "print", "texlive", "texmf", "pkg")
PLIST_FILES = ["PLIST-buildset", "PLIST-main", "PLIST-full", "PLIST-context"]

def main(args):
    sys.argv[0] = os.path.join(LOCALBASE, sys.argv[0])
    args.insert(1, "-recorder")
    print("texdep: %s" % args)

    p = subprocess.Popen(args, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    out, err = p.communicate()
    if p.returncode != 0:
        sys.stderr.write("Failed to run %s\n")
        sys.stderr.write("STDOUT\n")
        sys.stderr.write("------\n")
        sys.stderr.write("%s\n\n" % out)
        sys.stderr.write("STDERR\n")
        sys.stderr.write("------\n")
        sys.stderr.write("%s\n\n" % err)
        sys.exit(p.returncode)

    tex_file = args[-1]
    if tex_file.endswith(".tex") or tex_file.endswith(".ltx"):
        fls_file = tex_file[:-4] + ".fls"
    else:
        fls_file = tex_file + ".fls"

    plist_dct = read_in_plists()

    print("Reading file list from %s" % fls_file)
    with open(fls_file) as fh:
        depends = process_fls(fh, plist_dct)

    for k, v in depends.items():
        if k.endswith("PLIST-buildset"):
            continue
        print("\n")
        print(k)
        print(72 * "-")
        for fl in v:
            print("  %s" % fl)


def read_in_plists():
    dct = {}
    for plist in PLIST_FILES:
        dct[plist] = []
        path = os.path.join(PLIST_DIR, plist)
        with open(path) as fh:
            for line in fh:
                dct[plist].append(os.path.join(LOCALBASE, line.strip()))
    return dct


def process_fls(fh, plist_dct):
    depends = defaultdict(list)

    for line in fh:
        elems = line.split(" ")
        assert len(elems) == 2
        if elems[0] != "INPUT":
            continue

        fl = elems[1].strip()
        for plist, contents in plist_dct.iteritems():
            if fl in contents:
                depends[plist].append(fl)
                break
    return depends


if __name__ == "__main__":
    main(sys.argv)
