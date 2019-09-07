#!/bin/bash
set -e
if [[ ! -d vendor/${BUILD_NAME} ]]; then
  echo "WARNING no folder for ${BUILD_NAME} found in vendor, did you extracted the proprietary blobs"
fi
repo init -u https://github.com/LineageOS/android.git -b lineage-16.0
#echo "SYNCING" `date +"%m-%d-%Y %T"`
#repo sync > sync.log
echo "CONFIGURING" `date +"%m-%d-%Y %T"`
source build/envsetup.sh
breakfast "${BUILD_NAME}"
# TODO CCACHE + SIGNED
echo "BUILDING" `date +"%m-%d-%Y %T"`
croot
brunch "${BUILD_NAME}"
echo "DONE output: ${OUT}"