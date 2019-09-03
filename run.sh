repo init -u https://github.com/LineageOS/android.git -b lineage-16.0
echo "SYNCING"
repo sync > sync.log
echo "BUILDING"
source build/envsetup.sh
breakfast bacon