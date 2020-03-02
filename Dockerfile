# Command to build : docker build -t xiaojin/typora .
# Command to run : docker run --rm -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix:ro xiaojin/typora typora
# Command to create window. Do on host. : xhost +local:dock

FROM ubuntu

RUN apt-get update; apt-get install -y wget libgtk-3-0 libxss1 libnss3 libasound2 \
 libcanberra-gtk-module libcanberra-gtk3-module libx11-xcb1 \
 gnupg2 software-properties-common && \
 apt-get autoclean && rm -rf /var/lib/apt/lists/*
RUN wget -qO - https://typora.io/linux/public-key.asc | apt-key add -
RUN add-apt-repository 'deb https://typora.io/linux ./'

RUN apt-get install -y typora
