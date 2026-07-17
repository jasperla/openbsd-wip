# OpenBSD / BSD hardening patch

Upstream `kqueue` 1.1.1 panics in `Event::new` / `Event::from_error` when a
kevent is delivered for an fd that is no longer in the watcher's internal
list (`find_file_ident(...).unwrap()`).

That race is common under:

- recursive fan-out watches on large trees (many kqueue fds)
- watch teardown while events are still pending
- EMFILE / open-files pressure (OpenBSD hit this during grok-build porting)

`notify`'s thread is named `notify-rs kqueue loop`; an unwrap there aborts
file watching (and can take down the process depending on panic hooks).

## Change

`Event::new` and `Event::from_error` now return `Option<Event>`. Missing
idents yield `None`, and `get_event` skips them. Callers that only use
`Watcher::poll` / `iter` (including `notify` 8.x) already treat `None` as
"no event".

## Upstream

Ideal fix: same change in https://crates.io/crates/kqueue (or a soft error).
This path patch keeps the OpenBSD port and local builds stable until then.
