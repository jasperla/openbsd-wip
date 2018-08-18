#!/usr/bin/env python2.7
"""
Output update-plist(1) hints for which files go into which PLIST.

Usage:
  env WRKINST=... TRUEPREFIX=... python2.7 update_plist_hints.py <tlpdb-gz>

Arguments:
    tlpdb-gz: The (gzipped) TeX Live database file to use.
"""

import re
import sys
import os


YEAR = 2017

MANS_INFOS_RE = re.compile("(man\/man[0-9]\/.*[0-9]|info\/.*\.info)$")
MOVE_MANS_INFOS_RE = re.compile("^share/texmf-dist/doc/(man|info)/")


def fatal(msg):
    sys.stderr.write(msg + "\n")
    sys.exit(1)


# Read environment
try:
    WRKINST = os.environ["WRKINST"]
    TRUEPREFIX = os.environ["TRUEPREFIX"][1:]
except KeyError:
    fatal("This requires WRKINST and TRUEPREFIX environment vars set")


class NastyError(Exception):
    pass


# Individual files that conflict with other ports.
CONFLICT_FILES = set([
    # Comes from print/ps2eps.
    # ps2eps is included in a larger texlive package called pstools, so it
    # cannot be excluded by package. We disable this in the base build at
    # configure time.
    "man/man1/bbox.1",
    "man/man1/disdvi.1",
    # We have a psutils port, but tex live's version includes some other
    # stuff (perl scripts). Best package those up.
    # a bunch of perl scripts.
    "man/man1/epsffit.1",
    "man/man1/extractres.1",
    "man/man1/psutils.1",
    "man/man1/psjoin.1",
    "man/man1/includeres.1",
    "man/man1/ps2eps.1",
    "man/man1/psbook.1",
    "man/man1/psnup.1",
    "man/man1/psresize.1",
    "man/man1/psselect.1",
    "man/man1/pstops.1",
])


def remove_if_in_list(el, ls):
    if el in ls:
        ls.remove(el)


def move_mans_and_infos(file_set):
    return set([re.sub(MOVE_MANS_INFOS_RE, "\g<1>/", i)
                for i in file_set])


def collect_files(specs, db, regex=None, invert_regex=False):
    """Query the database and get file sets"""

    parts = db.get_pkg_parts(specs)
    files = move_mans_and_infos(db.get_pkg_part_files(parts, "share/"))
    if regex:
        if not invert_regex:
            return [f for f in files if re.match(regex, f)]
        else:
            return [f for f in files if not re.match(regex, f)]
    else:
        return files


def docspecs(pkg_list):
    return ["%s:doc" % (pkg) for pkg in pkg_list]


def runspecs(pkglist):
    return ["%s:run" % pkg for pkg in pkglist]


def build_subset_file_lists(tlpdb):
    # Set up.
    from tlpdb_parser import Parser
    sys.stderr.write("parsing tlpdb...\n")
    db = Parser(tlpdb).parse()
    sys.stderr.write("making plist map...\n")

    # CONFLICTING PACKAGES
    # Whole packages that are ported elsewhere.
    conflict_pkgs = ["asymptote", "latexmk", "texworks", "t1utils",
                     "dvi2tty", "detex", "texinfo"]
    conflict_pkg_files = collect_files(conflict_pkgs, db)

    # BUILDSET
    # The smallest subset for building ports.
    buildset_pkgs = [
        # Barebones of a working latex system
        "scheme-basic",
        # textproc/dblatex
        "anysize", "appendix", "changebar",
        "fancyvrb", "float", "footmisc",
        "jknapltx", "multirow", "overpic",
        "stmaryrd", "subfigure",
        "fancybox", "listings", "pdfpages",
        "titlesec", "wasysym",
        # gnusetp/dbuskit
        "ec",
        # graphics/asymptote
        "epsf", "parskip",
        # gnusetp/dbuskit, graphics/asymptote
        "cm-super",
        # devel/darcs
        "preprint", "url",
        # print/lilypond (indirect via fonts/mftrace)
        "metapost",
        # www/yaws
        "times", "courier",
        # coccinelle
        "comment", "xcolor", "helvetic", "ifsym", "boxedminipage", "endnotes",
        "moreverb", "wrapfig", "xypic",
        # math/R
        "inconsolata",
        # books/tex-by-topic
        "svn-multi", "avantgar", "ncntrsbk", "fontname",
        ]
    buildset_files = collect_files(runspecs(buildset_pkgs), db)
    # Man and info files from the builset carry forward to the minimal set.
    buildset_doc_files = \
        collect_files(docspecs(buildset_pkgs), db, MANS_INFOS_RE)

    # CONTEXT
    # Subset containing the ConTeXt packages (we list here the direct
    # dependencies of collection-context in the tldb, each prepended with a `!`
    # so as to not follow dependencies).
    context_pkgs = [
        "!context",
        "!context-notes-zh-cn",
        "!context-account",
        "!context-algorithmic",
        "!context-animation",
        "!context-annotation",
        "!context-bnf",
        "!context-chromato",
        "!context-cmscbf",
        "!context-cmttbf",
        "!context-construction-plan",
        "!context-cyrillicnumbers",
        "!context-degrade",
        "!context-fancybreak",
        "!context-filter",
        "!context-french",
        "!context-fullpage",
        "!context-gantt",
        "!context-gnuplot",
        "!context-inifile",
        "!context-layout",
        "!context-letter",
        "!context-lettrine",
        "!context-mathsets",
        "!context-rst",
        "!context-ruby",
        "!context-simplefonts",
        "!context-simpleslides",
        "!context-title",
        "!context-transliterator",
        "!context-typearea",
        "!context-typescripts",
        "!context-vim",
        "!context-visualcounter",
    ]

    context_files = collect_files(runspecs(context_pkgs), db)
    context_files.update(
        collect_files(docspecs(context_pkgs), db, MANS_INFOS_RE))

    # MINIMAL
    # Scheme-tetex minus anything we installed in the buildset. Note that the
    # files in this subset go in "PLIST-main" (not "PLIST-minimal").
    minimal_pkgs = ["scheme-tetex"]
    minimal_files = collect_files(runspecs(minimal_pkgs), db)
    minimal_files.update(
        collect_files(docspecs(minimal_pkgs), db, MANS_INFOS_RE))
    minimal_files.update(buildset_doc_files)
    minimal_files = minimal_files - buildset_files.union(context_files)

    # FULL
    # Largest subset.
    full_pkgs = ["scheme-full"]
    full_files = collect_files(runspecs(full_pkgs), db)
    full_files.update(collect_files(docspecs(full_pkgs), db, MANS_INFOS_RE))
    full_files = \
        full_files - minimal_files.union(buildset_files.union(context_files))

    # DOCS
    # Docs for TeX packages in -buildset and -minimal only (to save space).
    # exclude manuals and info files
    docs_pkgs = ["scheme-tetex"]
    docs_files = collect_files(docspecs(docs_pkgs), db,
                               regex=MANS_INFOS_RE, invert_regex=True)

    plist_map = {
        TargetPlist.BUILDSET: buildset_files,
        TargetPlist.MINIMAL: minimal_files,
        TargetPlist.FULL: full_files,
        TargetPlist.CONTEXT: context_files,
        TargetPlist.DOCS: docs_files
    }
    return plist_map, CONFLICT_FILES.union(conflict_pkg_files)


class TargetPlist(object):
    UNREF = 0  # The subsets we used doesn't reference this file.
    BUILDSET = 1
    MINIMAL = 2
    FULL = 3
    CONTEXT = 4
    DOCS = 5

    STR_MAP = {
        UNREF: "unref",
        BUILDSET: "-buildset",
        MINIMAL: "-main",
        FULL: "-full",
        CONTEXT: "-context",
        DOCS: "-docs",
    }

    @staticmethod
    def to_str(code):
        return TargetPlist.STR_MAP[code]


def build_file_map(plist_map):
    """Builds a mapping for fast filename to target PLIST lookups."""

    sys.stderr.write("making file map...\n")
    file_map = {}
    for plist in TargetPlist.STR_MAP.keys():
        if plist == TargetPlist.UNREF:
            continue
        for f in plist_map[plist]:
            file_map[f] = plist
    return file_map


def should_comment_file(f, conflict_files):
    return (
        # Stuff provided by other ports.
        f in conflict_files or
        # Windows junk
        re.match(".*\.([Ee][Xx][Ee]|[Bb][Aa][Tt])$", f) or
        # no win32 stuff, but should probably keep win32 images in tl docs.
        ("win32" in f and "doc/texlive" not in f) or
        "mswin" in f or
        # Context source code -- seriously?
        re.match("^share/texmf-dist/scripts/context/stubs/source/", f) or
        # PDF versions of manuals
        re.match("^.*.man[0-9]\.pdf$", f) or
        # We don't want anything that isn't in the texmf tree.
        # Most of this is installer stuff which does not apply
        # to us.
        not f.startswith(("share/texmf", "man/", "info/")) or
        # TeX live installer, we never want
        ("tlmgr" in f and "doc/texlive" not in f) or
        # We don't need build instructions in our binary packages
        f.endswith("/tlbuild.info")
    )


def walk_fake(file_map, conflict_files):
    """Walks the fake directory emitting one line to stdout for each file."""

    sys.stderr.write("writing hints...\n")

    strip_prefix = os.path.join(WRKINST, TRUEPREFIX)
    if not strip_prefix.endswith(os.sep):
        strip_prefix += os.sep

    for root, dirs, files in os.walk(WRKINST):
        for basename in files:
            # Ports tree writes some cookies. Don't classify those.
            if root == WRKINST and basename.startswith("."):
                continue
            filename = os.path.join(root, basename)
            assert filename.startswith(strip_prefix)
            filename = filename[len(strip_prefix):]

            if filename.startswith("share/texmf-var/"):
                # texmf-var files not in the DB, but belong in the buildset.
                target = TargetPlist.BUILDSET
            else:
                try:
                    target = file_map[filename]
                except KeyError:
                    target = TargetPlist.UNREF

            if should_comment_file(filename, conflict_files):
                sys.stdout.write("#")

            print("%s %s" % (filename, TargetPlist.to_str(target)))


if __name__ == "__main__":
    if len(sys.argv) != 2:
        fatal(__doc__)

    plist_map, conflict_files = build_subset_file_lists(sys.argv[1])
    file_map = build_file_map(plist_map)
    walk_fake(file_map, conflict_files)
