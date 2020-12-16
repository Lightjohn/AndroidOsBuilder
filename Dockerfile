FROM ubuntu:18.04
# DEPENDENCIES
ENV UID=1000

RUN apt-get update && apt-get install -y --no-install-recommends \
    bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf \
    imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev \
    libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush rsync \
    schedtool squashfs-tools xsltproc zip zlib1g-dev python ca-certificates unzip zip \
    openjdk-8-jdk nano \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -rm -d /home/builder -s /bin/bash -g root -G sudo -u $UID builder
USER builder

RUN ccache -M 50G
# folders
RUN mkdir -p /home/builder/bin && mkdir -p /home/builder/android/lineage
# repo command
RUN curl --insecure https://storage.googleapis.com/git-repo-downloads/repo > /home/builder/bin/repo && chmod a+x /home/builder/bin/repo
ENV PATH="/home/builder/bin:$PATH"
# Android git
WORKDIR /home/builder/android/lineage

ADD mondrianwifi/roomservice.xml roomservice.xml
ADD *.sh /home/builder/
CMD ["bash", "/home/builder/run.sh"]
