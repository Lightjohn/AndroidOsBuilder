FROM ubuntu:18.04
# DEPENDENCIES
RUN apt-get update && apt-get install -y --no-install-recommends \
    bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf \
    imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev \
    libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush rsync \
    schedtool squashfs-tools xsltproc zip zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*
# repo command
RUN mkdir ~/bin && curl --insecure https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo && chmod a+x ~/bin/repo
ENV PATH="/root/bin:$PATH"
# folders
RUN mkdir -p ~/bin && mkdir -p ~/android/lineage
# Android git
WORKDIR ~/android/lineage
ADD run.sh /root/run.sh
CMD $HOME/run.sh
