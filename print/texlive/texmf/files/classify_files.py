#!/usr/bin/env python2.7
"""
Generate packing lists for the TeX Live texmf packages

Usage: XXX

Arguments:
    tlpdb: The TeX Live database file to use.
"""

import re
import sys
import os
from texscythe import config, subset, orm


YEAR = 2017
MAN_INFO_REGEX = "texmf-dist\/doc\/(man\/man[0-9]\/.*[0-9]|info\/.*\.info)$"


def fatal(msg):
    sys.stderr.write(msg + "\n")
    sys.exit(1)


# Read environment
try:
    FAKE_DIR = os.environ["FAKE_DIR"]
    TRUEPREFIX = os.environ["TRUEPREFIX"][1:]
except KeyError:
    fatal("This requires FAKE_DIR and TRUEPREFIX environment vars set")


class NastyError(Exception):
    pass


CONFLICT_FILES = set([
    # Comes from print/ps2eps.
    # ps2eps is included in a larger texlive package called pstools, so it
    # cannot be excluded by package. We disable this in the base build at
    # configure time.
    "@man man/man1/bbox.1",
    "@man man/man1/disdvi.1",
    # We have a psutils port, but tex live's version includes some other
    # stuff (perl scripts). Best package those up.
    # a bunch of perl scripts.
    "@man man/man1/epsffit.1",
    "@man man/man1/extractres.1",
    "@man man/man1/psutils.1",
    "@man man/man1/psjoin.1",
    "@man man/man1/includeres.1",
    "@man man/man1/ps2eps.1",
    "@man man/man1/psbook.1",
    "@man man/man1/psnup.1",
    "@man man/man1/psresize.1",
    "@man man/man1/psselect.1",
    "@man man/man1/pstops.1",
])


def remove_if_in_list(el, ls):
    if el in ls:
        ls.remove(el)


def relocate_mans_and_infos(filelist):
    filelist = filelist[:]
    remove_if_in_list("share/texmf-dist/doc/info/dir", filelist)
    return [re.sub("^share/texmf-dist/doc/(man|info)/", "@\g<1> \g<1>/", i)
            for i in filelist]


def find_commented_files(file_list):
    """Identify files which we'd like to see commented in the PLISTs"""

    commented_files = [x for x in file_list if
         # Windows junk
         re.match(".*\.([Ee][Xx][Ee]|[Bb][Aa][Tt])$", x) or
         # no win32 stuff, but should probably keep win32 images in tl docs.
         ("win32" in x and "doc/texlive" not in x) or
         "mswin" in x or
         # Context source code -- seriously?
         re.match("^share/texmf-dist/scripts/context/stubs/source/", x) or
         # PDF versions of manuals
         re.match("^.*.man[0-9]\.pdf$", x) or
         # We don't want anything that isn't in the texmf tree.
         # Most of this is installer stuff which does not apply
         # to us.
         not x.startswith("share/texmf") or
         x.startswith("@") or # XXX what's this?
         # Stuff provided by other ports
         x in CONFLICT_FILES or
         # TeX live installer, we never want
         # XXX why not filter out the package?
         ("tlmgr" in x and "doc/texlive" not in x) or
         # We don't need build instructions in our binary packages
         x.endswith("/tlbuild.info")
         ]
    return commented_files


def collect_files(specs, tlpdb, regex=None):
    # XXX work with sets only
    cfg = config.Config(
        tlpdb,
        inc_pkgspecs=specs,
        plist=None,  # return file list
        prefix_filenames="share/",
        dirs=False,  # Do this manually as we will filter the list
        regex=regex,
    )
    sess = orm.init_orm(cfg)
    files = subset.compute_subset(cfg, sess)
    sess.close()
    files = relocate_mans_and_infos(files)
    commented_files = find_commented_files(files)
    return files, commented_files


def manspecs(pkglist):
    return ["%s:doc:%s" % (pkg, MAN_INFO_REGEX) for pkg in pkglist]


def runspecs(pkglist):
    return ["%s:run" % pkg for pkg in pkglist]


def writelines(fh, lines):
    for i in lines:
        fh.write(i + "\n")


def list_subtract(l, rm):
    return list(set(l).difference(set(rm)))


def build_subset_file_lists(tlpdb):
    # NEVERSET
    # Packages we never want because it it ported separately to TeX live.
    # XXX have these commented where they would have appeared.
    never_pkgs = ["asymptote", "latexmk", "texworks", "t1utils",
                  "dvi2tty", "detex", "texinfo"]
    neverset_files, commented_neverset_files = collect_files(never_pkgs, tlpdb)

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

    buildset_specs = runspecs(buildset_pkgs)
    buildset_files, commented_buildset_files = collect_files(buildset_specs, tlpdb)

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

    context_specs = runspecs(context_pkgs) + manspecs(context_pkgs)
    context_files, commented_context_files = \
        collect_files(context_specs, tlpdb)
    context_files = list_subtract(context_files, neverset_files)
    commented_context_files = list_subtract(commented_context_files,
                                            commented_neverset_files)

    # MINIMAL
    # Scheme-tetex minus anything we installed in the buildset
    minimal_pkgs = ["scheme-tetex"]
    minimal_specs = (runspecs(minimal_pkgs) +
                     manspecs(minimal_pkgs) +
                     manspecs(buildset_pkgs))  # carry forward buildset manuals

    minimal_files, commented_minimal_files = collect_files(minimal_specs, tlpdb)
    minimal_files = list_subtract(minimal_files, buildset_files +
                                                 context_files +
                                                 neverset_files)
    commented_minimal_files = list_subtract(commented_minimal_files,
                                            commented_buildset_files +
                                            commented_context_files +
                                            commented_neverset_files)

    # FULL
    # Largest subset.
    full_pkgs = ["scheme-full"]
    full_specs = runspecs(full_pkgs) + manspecs(full_pkgs)

    full_files, commented_full_files = collect_files(full_specs, tlpdb)
    full_files = list_subtract(full_files,
                               minimal_files + buildset_files +
                               context_files + neverset_files)
    commented_full_files = list_subtract(commented_full_files,
                                         commented_minimal_files +
                                         commented_buildset_files +
                                         commented_context_files +
                                         commented_neverset_files)

    # DOCS
    # Docs for TeX packages in -buildset and -minimal only (to save space).
    # exclude manuals and info files
    no_man_info_pdfman_regex = \
        "(?!texmf-dist\/doc\/(man\/man[0-9]\/.*[0-9]|info\/.*\.info)$)"

    docs_specs = ["scheme-tetex:doc"]
    docs_files, commented_docs_files = \
        collect_files(docs_specs, tlpdb, regex=no_man_info_pdfman_regex)
    docs_files = list_subtract(docs_files, neverset_files)
    commented_docs_files = list_subtract(commented_docs_files, neverset_files)

    # XXX not elegant
    all_commented_files = set()
    all_commented_files.update(neverset_files)
    all_commented_files.update(commented_neverset_files)
    all_commented_files.update(commented_buildset_files)
    all_commented_files.update(commented_minimal_files)
    all_commented_files.update(commented_context_files)
    all_commented_files.update(commented_full_files)
    all_commented_files.update(commented_docs_files)

    return (buildset_files, minimal_files, full_files, context_files,
            docs_files, all_commented_files)


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
        MINIMAL: "-minimal",
        FULL: "-full",
        CONTEXT: "-context",
        DOCS: "-docs",
    }

    @staticmethod
    def to_str(code):
        return TargetPlist.STR_MAP[code]


def build_file_map(buildset_files, minimal_files,
                   full_files, context_files, docs_files, commented_files):
    """Builds mapping for near constant time filename to subset lookups.

    The mapping is from filename to a tuple of `(target, is_commented)`.
    """

    sys.stderr.write("making file map\n")
    file_map = {}
    for f in buildset_files:
        file_map[f] = (TargetPlist.BUILDSET, f in commented_files)
    for f in minimal_files:
        file_map[f] = (TargetPlist.MINIMAL, f in commented_files)
    for f in full_files:
        file_map[f] = (TargetPlist.FULL, f in commented_files)
    for f in context_files:
        file_map[f] = (TargetPlist.CONTEXT, f in commented_files)
    for f in docs_files:
        file_map[f] = (TargetPlist.DOCS, f in commented_files)
    return file_map


def walk_fake(file_map):
    """Walks the fake directory emitting one line to stdout for each file."""

    strip_prefix = os.path.join(FAKE_DIR, TRUEPREFIX)
    if not strip_prefix.endswith(os.sep):
        strip_prefix += os.sep

    for root, dirs, files in os.walk(FAKE_DIR):
        for basename in files:
            # Ports tree writes some cookies. Don't classify those.
            if root == FAKE_DIR and basename.startswith("."):
                continue
            filename = os.path.join(root, basename)
            assert filename.startswith(strip_prefix)
            filename = filename[len(strip_prefix):]

            comment = False
            if filename.startswith("share/texmf-var/"):
                # texmf-var files are not in the DB.
                target = TargetPlist.BUILDSET
            else:
                try:
                    target, comment = file_map[filename]
                except KeyError:
                    target = TargetPlist.UNREF

            if comment:
                sys.stdout.write("#")
            print("%s %s" % (filename, TargetPlist.to_str(target)))


if __name__ == "__main__":
    if len(sys.argv) != 2:
        fatal(__doc__)

    lists = build_subset_file_lists(sys.argv[1])
    buildset_fls, minimal_fls, full_fls, context_fls, \
        docs_fls, commented_files = lists
    file_map = build_file_map(buildset_fls, minimal_fls, full_fls,
                              context_fls, docs_fls, commented_files)
    walk_fake(file_map)
