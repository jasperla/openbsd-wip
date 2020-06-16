#!/usr/local/bin/python3
"""
Searches for `.so` linked manual pages and converts them to symlinks.

usage: man_symlinks.py <path-to-man-dirs>
"""

import os
import sys


def main(root_dir):
    for f in os.scandir(root_dir):
        if not f.is_dir() or not f.name.startswith("man"):
            continue
        process_mandir(os.path.join(root_dir, f))


def process_mandir(direc):
    for f in os.scandir(direc):
        if not f.is_file():
            continue

        path = os.path.join(direc, f.name)
        with open(path, "r", errors="ignore") as fh:
            for line in fh:
                line = line.strip()
                if line == "":
                    continue
                elif line.startswith(".so "):
                    src = os.path.join("..", line[4:])
                    os.unlink(path)
                    os.symlink(src, path)
                break


if __name__ == "__main__":
    if len(sys.argv) != 2:
        sys.stderr.write(__doc__)
        sys.exit(1)

    main(sys.argv[1])
