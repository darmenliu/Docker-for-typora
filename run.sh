docker run --rm -d -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix:ro -v `pwd`/Data:/root  jmelody/typora typora --no-sandbox
