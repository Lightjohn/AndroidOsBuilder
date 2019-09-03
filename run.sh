#!/bin/bash
repo init -u https://github.com/LineageOS/android.git -b lineage-16.0
echo "SYNCING" `date +"%m-%d-%Y %T"`
repo sync > sync.log
echo "BUILDING" `date +"%m-%d-%Y %T"`
source build/envsetup.sh
breakfast bacon