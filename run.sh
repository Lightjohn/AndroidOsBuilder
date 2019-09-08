#!/bin/bash
if [[ ! -d vendor/oneplus/${BUILD_NAME} ]]; then
  echo "WARNING no folder for ${BUILD_NAME} found in vendor, did you extracted the proprietary blobs"
fi
if [[ ! -d vendor/oppo ]]; then
  echo "WARNING no folder for oppo found in vendor, did you extracted the proprietary blobs"
fi
repo init -u https://github.com/LineageOS/android.git -b "${BRANCH_NAME}"
echo "SYNCING" `date +"%m-%d-%Y %T"`
#repo sync > sync.log
echo "CONFIGURING" `date +"%m-%d-%Y %T"`
source build/envsetup.sh
breakfast "${BUILD_NAME}"
# TODO SIGNED
echo "BUILDING" `date +"%m-%d-%Y %T"`
croot
brunch "${BUILD_NAME}"
echo "DONE output: ${OUT}"