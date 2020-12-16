#!/usr/bin/env bash
# Some Mondrianwifi proprietary stuff
git clone https://github.com/Valera1978/android_vendor_samsung_mondrianwifi.git blobs_mondrianwifi
mkdir -p vendor/samsung/mondrianwifi
cp -r blobs_mondrianwifi/* vendor/samsung/mondrianwifi/