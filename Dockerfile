FROM ubuntu:18.04
# DEPENDENCIES
RUN apt-get update && apt-get install -y \
    bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf \
    imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev \
    libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush rsync \
    schedtool squashfs-tools xsltproc zip zlib1g-dev
# repo command
RUN curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo
ENV PATH="$HOME/bin:$PATH"
# folders
RUN mkdir -p ~/bin && mkdir -p ~/android/lineage
# Android git
RUN cd ~/android/lineage && repo init -u https://github.com/LineageOS/android.git -b lineage-16.0
