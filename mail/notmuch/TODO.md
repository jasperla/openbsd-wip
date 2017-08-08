# TODO
These are off the top of my head.

## Manpage
The manpage `notmuch.3` is malformed. The symptom is an extremely long subject
line which contains large amounts of the text from the manpage. This can be seen
by installing, running `makewhatis` to update the whatis database and running
`man -k notmuch`.

## Emacs Bindings
If emacs is installed on the system the port is built on, the package contains
emacs bindings. They should either be explicitly disabled or the port should
build-depend on emacs, which I'd like to avoid.

## bash completion
* `configure` gets the right parameters, but complains about `bash-completion`
  not being installed. Do we want those?

## xapian as a dependency
`make package` complains about the `devel/xapian` dependency:

    $ make package
    `/usr/ports/pobj/notmuch-0.23.5/fake-amd64/.fake_done' is up to date.
    ===>  Building package for notmuch-0.23.5
    Create /usr/ports/packages/amd64/all/notmuch-0.23.5.tgz
    LIB_DEPENDS databases/xapian-core not needed for mail/notmuch ?
    Link to /usr/ports/packages/amd64/ftp/notmuch-0.23.5.tgz
    Link to /usr/ports/packages/amd64/cdrom/notmuch-0.23.5.tgz
