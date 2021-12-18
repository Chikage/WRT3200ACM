#!/bin/bash

pushd package/lean
git clone --depth=1 https://github.com/fw876/helloworld
rm -rf luci-theme-argon
rm -rf luci-app-argon-config
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
git clone -b master https://github.com/jerrykuku/luci-app-argon-config.git
popd

sed -i 's/luci-theme-bootstrap/luci-theme-argon-18.06/g' ./feeds/luci/collections/luci/Makefile
