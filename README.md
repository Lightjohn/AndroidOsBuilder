# README #

Based on LineageOs latest builds available

# Usage
Run `run_me_first_XXXX.sh` where `XXXX` is your device

Then `docker-compose up --build -d`

To follow the logs: `docker-compose logs --tail=10 -f android`

# Config
Change them in `docker-compose.yml`

# Builder Options
* CLEAN_BUILD=1 will delete previously cloned repo before syncing
* SKIP_INIT=1 will skip git init and git sync (might be super slow)

# Android build options
* STOCK_ROM_DIR=/path/to/proprietary/vendor/files ./extract-files.sh

## bacon
* BUILD_NAME=bacon
* BRANCH_NAME=lineage-16.0

## mondrianwifi
* BUILD_NAME=mondrianwifi
* BRANCH_NAME=cm-14.1

### In roomservice.xml
now using `Lightjohn/android_vendor_samsung_mondrianwifi.git` instead of `Valera1978/android_vendor_samsung_mondrianwifi.git`

## Sources
* [xda post](https://forum.xda-developers.com/t/rom-t320-t325-unofficial-lineageos-17-1-android-10-0-q-20200815.4014565/) 
* [lineageos](https://github.com/LineageOS/android)
* [bacon](https://wiki.lineageos.org/devices/bacon/build)
* [mondrianwifi](https://wiki.lineageos.org/devices/mondrianwifi/build)
* [LineageOs build.sh](https://github.com/lineageos-infra/build-config/blob/lineage-16.0/android/build.sh)

## Sources MondrianWifi
* [android_device_samsung_mondrianwifi (doc)](https://github.com/Valera1978/android_device_samsung_mondrianwifi)
* [android_vendor_samsung_mondrianwifi](https://github.com/Valera1978/android_vendor_samsung_mondrianwifi)
* [android_device_samsung_mondrianlte](https://github.com/Valera1978/android_device_samsung_mondrianlte)
* [android_vendor_samsung_mondrianlte](https://github.com/Valera1978/android_vendor_samsung_mondrianlte)


## DEBUG

`docker-compose run android bash`

## ToDo
* mv `run_me_first_bacon.sh` to `bacon/roomservice.xml`
* Signed