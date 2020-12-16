#!/bin/bash
if [[ ! -d vendor/oneplus/${BUILD_NAME} ]]; then
  echo "WARNING no folder for ${BUILD_NAME} found in vendor, did you extracted the proprietary blobs"
fi
if [[ ! -d vendor/oppo ]]; then
  echo "WARNING no folder for oppo found in vendor, did you extracted the proprietary blobs"
fi

git config --global user.email "test@nobody.com"
git config --global user.name "not me"
git config --global color.ui false

/home/builder/run_me_first_${BUILD_NAME}.sh

echo "Preparing build"

if [[ $CLEAN_BUILD == "1" ]]; then
  rm -rf /home/builder/android/lineage/.repo
fi
if [[ $SKIP_INIT != "1" ]]; then
  echo "INIT"
  repo init -u https://github.com/LineageOS/android.git -b "${BRANCH_NAME}"
  echo "SYNCING" `date +"%m-%d-%Y %T"`

  if [[ -f /home/builder/roomservice.xml ]]; then
    mkdir -d .repo/local_manifests/
    cp /home/builder/roomservice.xml .repo/local_manifests/
  else
    echo "No roomservice.xml found"
  fi

  repo sync -j8
fi
echo "CONFIGURING" `date +"%m-%d-%Y %T"`
source build/envsetup.sh
# breakfast "${BUILD_NAME}" # Only brunch matters
# TODO SIGNED
echo "BUILDING" `date +"%m-%d-%Y %T"`
croot
brunch "${BUILD_NAME}"
echo "DONE output: ${OUT}"