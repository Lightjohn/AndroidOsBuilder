#!/usr/bin/env bash
# Some Mondrianwifi proprietary stuff
git clone https://github.com/Bisterne/vendor_samsung_mondrianwifi.git blobs_mondrianwifi
mkdir -p androidbuild/vendor/samsung/mondrianwifi
cp -r blobs_mondrianwifi/* androidbuild/vendor/samsung/mondrianwifi
