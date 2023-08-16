#!/bin/sh

v=${1#v*}
d=$(mktemp -d)
cd $tmp
echo "Vendoring gurk-rs $1 in $tmp ... please wait."

# DL
ftp -C https://github.com/boxdot/gurk-rs/archive/refs/tags/v$v.tar.gz
tar xzvf v$v.tar.gz
cd gurk-rs-$v

# vendor
cargo vendor | tee /tmp/gurk-rs-$v.config

# pack
tar czvf gurk-rs-$v-vendorfiles.tar.gz \
    vendor/curve25519-dalek \
    vendor/libsignal-protocol \
    vendor/libsignal-service \
    vendor/libsignal-service-hyper \
    vendor/poksho \
    vendor/presage \
    vendor/zkgroup \
    vendor/notify-rust

mv gurk-rs-$v-vendorfiles.tar.gz /tmp

# show config
cat /tmp/gurk-rs-$v.config

echo "rsync -P /tmp/gurk-rs-$v-vendorfiles.tar.gz  sdk@codevoid.de:/home/www/htdocs/http/"

rm -rf $d
