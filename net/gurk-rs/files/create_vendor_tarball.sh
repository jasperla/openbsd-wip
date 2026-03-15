#!/bin/sh -xe

v=$(echo "$1" | awk '{ print $4 }' | tr -d "v")
cd /tmp
echo "Vendoring gurk-rs $1 in /tmp ... please wait."

rm -rf /tmp/gurk-rs*

# DL
ftp -o v$v.tar.gz https://github.com/boxdot/gurk-rs/archive/refs/tags/v$v.tar.gz
tar xzvf v$v.tar.gz
cd gurk-rs-$v

# vendor (stdout shows the required cargo config)
cargo vendor | tee /tmp/gurk-rs-$v.config

# pack only the git-sourced crates (registry crates come from crates.inc)
tar czvf gurk-rs-$v-vendorfiles.tar.gz \
    vendor/curve25519-dalek \
    vendor/curve25519-dalek-derive \
    vendor/libsignal-account-keys \
    vendor/libsignal-core \
    vendor/libsignal-protocol \
    vendor/libsignal-service \
    vendor/libsqlite3-sys \
    vendor/poksho \
    vendor/presage \
    vendor/presage-store-sqlite \
    vendor/signal-crypto \
    vendor/spqr \
    vendor/sqlcipher-crypto-provider \
    vendor/sqlx \
    vendor/sqlx-core \
    vendor/sqlx-macros \
    vendor/sqlx-macros-core \
    vendor/sqlx-mysql \
    vendor/sqlx-postgres \
    vendor/sqlx-sqlite \
    vendor/usernames \
    vendor/zkcredential \
    vendor/zkgroup

mv gurk-rs-$v-vendorfiles.tar.gz /tmp

# show cargo source config (for updating files/config)
echo "=== cargo source config ==="
cat /tmp/gurk-rs-$v.config

echo "rsync -P /tmp/gurk-rs-$v-vendorfiles.tar.gz sdk@codevoid.de:/home/www/htdocs/http/"
