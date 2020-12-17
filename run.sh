#!/bin/bash
# Setting git so that it will not stop build
git config --global user.email "test@nobody.com"
git config --global user.name "not me"
git config --global color.ui false

echo "Preparing build"

if [[ $CLEAN_BUILD == "1" ]]; then
  rm -rf /home/builder/android/lineage/.repo
fi
if [[ $SKIP_INIT != "1" ]]; then
  echo "INIT"
  repo init -u https://github.com/LineageOS/android.git -b "${BRANCH_NAME}" >> pre_build.log 2>&1
  echo "SYNCING" `date +"%m-%d-%Y %T"`

  if [[ -f /home/builder/roomservice.xml ]]; then
    mkdir -p .repo/local_manifests/
    cp /home/builder/roomservice.xml .repo/local_manifests/
  else
    echo "No roomservice.xml found"
  fi

  repo sync -j8 --force-sync >> pre_build.log 2>&1
fi
echo "CONFIGURING" `date +"%m-%d-%Y %T"`
source build/envsetup.sh

echo "BUILDING" `date +"%m-%d-%Y %T"`

brunch "${BUILD_NAME}"
echo "DONE output: ${OUT}"