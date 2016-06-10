openbsd-wip - work in progress ports for OpenBSD
======================

This tree is to be used to maintain and eventually migrate ports into the
official OpenBSD ports tree. This means that ports in this tree are actively
worked on and may not always build, though of course it's best to aim for
building ports.

The goal of this exercise is to get more people actively involved in ports. As
well as having a tool to better keep track of (half-)finished ports out there.
Instead of having it rot in a corner of a mailinglist.

Updated ports
==================================

Updates are also welcome; just try to keep this tree clean by removing ports
that are updated/imported upstream.

If you're importing an update, please add an UPDATE file in the ports' directory
with a summary of changes/explanation. This will make it easier to keep
updates and new ports apart.

If it's a rather trivial update, please don't bother importing it here and just
send the diff to ports@ and/or the maintainer.

Finished ports
==================================

When a port is ready to get committed, please add
an entry to /FINISHED in the following format (subject to change):

	net/gnaughty:	ready for import, sent to ports@ (jasperla)

Use a TODO file to list what the outstanding issues are before the port can be
listed in FINISHED.

Also, only commit full ports please. Not just a Makefile or just a diff.

Administrative files
==================================

As one of the main goals of this repository is to ease the workload for
committers, please use the following files to keep the overview of what's here:

- FINISHED: Described above
- TODO: File in the ports' directory explaining what needs to be done
- UPDATE: Explain the update, could contain a ready-to-use commit message? :)

Workflow (open for discussion)
==================================

- Commit your updated port here with a corresponding UPDATE file.
- or commit your new port WIP-update here with a TODO/UPDATE file and hack on it.
- Mail ports@ and/or maintainer.
- Add an entry to FINISHED.
- When the port is committed, remove the FINISHED entry as well as the port.

This repository is not here to migrate people away from using ports@. Ports
posted here are unlikely to get the level of discussion and testing they get on
ports@. So this repository is here to keep track of the submissions.

**If you don't want to work anymore on your half-finished or not-committed-yet
port, please remove it from the repository. In the future, other people can
rescue your work from the git history. Maintaining the repository will prevent
it from becoming a graveyard of abandoned ports.**

How to use this tree
==================================

One way to use this tree is to clone it into your `/usr/ports/` directory and
adjust `PORTSDIR_PATH` accordingly in /etc/mk.conf:

	PORTSDIR_PATH=${PORTSDIR}:$(PORTSDIR)/openbsd-wip:${PORTSDIR}/mystuff

In the above example, a port with version 1 in cvs, version 2 in openbsd-wip.
Then, the version in cvs will be picked up before the version in openbsd-wip.
This is important if you are building packages using dpb. The order of 
PORTSDIR_PATH is important.

To prevent "merge commits" from showing up in git log, it's recommended to
either update your tree with:

	git fetch && git rebase origin

or set the following option in `.git/config` in your local openbsd-wip repo
(see git-config(1) on `branch.<name>.rebase` and `branch.autosetuprebase`):

	git config branch.master.rebase true

Users of `py-hg-git` may update the tree issuing:

	hg pull --rebase

How to contribute
==================================

Please let me know if you need write access to this repository. But please
stick the workflow outlined in this document as well the pointers in
<http://openbsd.org/porting.html>
