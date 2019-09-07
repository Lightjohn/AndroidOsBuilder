#!/usr/bin/env bash
# Some Bacon proprietary stuff
git clone https://github.com/jrior001/proprietary_vendor_oneplus.git blobs_bacon
mkdir -p androidbuild/vendor
cp -r blobs_bacon/bacon androidbuild/vendor
# Same for oppo
git clone  https://github.com/TeamExodus/vendor_oppo_msm8974-common.git blobs_oppo
mkdir -p androidbuild/vendor/oppo/msm8974-common
cp -r blobs_oppo/* androidbuild/vendor/oppo/msm8974-common
cd androidbuild/vendor/oppo/msm8974-common/proprietary/ && ln -s bin/* vendor/bin