# README #

Based on LineageOs latest builds available

# Usage
Run `run_me_first_XXXX.sh` where `XXXX` is your device

Then `docker-compose up --build -d`

To follow the logs: `docker-compose logs --tail=10 -f android`

# Config
Change them in `docker-compose.yml`

# Options
* CLEAN_BUILD=1 will delete previously cloned repo before syncing

## bacon
* BUILD_NAME=bacon
* BRANCH_NAME=lineage-16.0

## mondrianwifi
* BUILD_NAME=mondrianwifi
* BRANCH_NAME=cm-14.1

## Sources
* [xda post](https://forum.xda-developers.com/t/rom-t320-t325-unofficial-lineageos-17-1-android-10-0-q-20200815.4014565/) 
* [lineageos](https://github.com/LineageOS/android)
* [bacon](https://wiki.lineageos.org/devices/bacon/build)
* [mondrianwifi](https://wiki.lineageos.org/devices/mondrianwifi/build)

## Sources MondrianWifi
* [android_device_samsung_mondrianwifi](https://github.com/Valera1978/android_device_samsung_mondrianwifi)
* [android_vendor_samsung_mondrianwifi](https://github.com/Valera1978/android_vendor_samsung_mondrianwifi)
* [android_device_samsung_mondrianlte](https://github.com/Valera1978/android_device_samsung_mondrianlte)
* [android_vendor_samsung_mondrianlte](https://github.com/Valera1978/android_vendor_samsung_mondrianlte)
