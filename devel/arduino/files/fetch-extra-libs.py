#!/usr/bin/env python3.6
"""
Download Arduino SDK extra libraries.
(c) 2018 Edd Barrett <edd@openbsd.org>

usage: fetch-extra-libs.py <build.xml> <output-dir>

Make sure LC_CTYPE=en_US.UTF-8 when running this.
"""

import os
import sys
import subprocess
from distutils.spawn import find_executable
from bs4 import BeautifulSoup

GIT = find_executable("git")


def shell(args):
    subprocess.check_call(args)


class Lib:
    """Describes an arduino library to be fetched from GitHub"""

    GITHUB = "https://github.com/"
    DEFLAUT_GITHUB_USER = "arduino-libraries"

    def __init__(self, repo_name, version, github_user=None):
        self.repo_name = repo_name
        self.version = version

        if github_user is None:
            github_user = Lib.DEFLAUT_GITHUB_USER
        self.github_user = github_user

    def repo_url(self):
        return "%s%s/%s" % (Lib.GITHUB, self.github_user, self.repo_name)

    def __str__(self):
        return "<%s-%s: %s>" % (self.repo_name, self.version, self.repo_url())

    def clone(self):
        """Clones the lib in the current directory and sets the git HEAD to the
        required version"""

        # Clone the repo itself.
        direc = "%s-%s" % (self.repo_name, self.version)
        shell([GIT, "clone", self.repo_url(), direc])

        # Switch to the right version.
        os.chdir(direc)
        shell([GIT, "checkout", self.version])
        os.chdir("..")


def fetch(libs, out_dir):
    os.mkdir(out_dir)
    os.chdir(out_dir)
    for l in libs:
        l.clone()


def get_lib_info(build_xml):
    with open(build_xml, encoding="utf-8") as fh:
        xml = BeautifulSoup(fh, 'lxml')
        dl_tags = xml.find_all('download-library')

    libs = []
    for dl in dl_tags:
        name = dl["name"]
        version = dl["version"]
        gh_user = dl.get("githubuser")
        libs.append(Lib(name, version, gh_user))

    return libs


def usage():
    print(__doc__)
    sys.exit(1)


if __name__ == "__main__":
    if len(sys.argv) != 3:
        usage()

    build_xml, out_dir = sys.argv[1:]

    libs = get_lib_info(build_xml)
    fetch(libs, out_dir)
