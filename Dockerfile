FROM ubuntu:latest
 
RUN	apt-get update
RUN	apt-get install -y pcmanfm featherpad lxtask xterm 
RUN	apt-get install -y mpv curl fzf
RUN	curl -sL github.com/justchokingaround/jerry/raw/main/jerry.sh -o /usr/local/bin/jerry
RUN	chmod +x /usr/local/bin/jerry
RUN	apt-get install -y pulseaudio
RUN apt-get install -y alsa-base
RUN apt-get install -y alsa-utils 
RUN apt-get install -y vim
	
ENV PULSE_SERVER=host.docker.internal:0.0	
ENV DISPLAY=host.docker.internal:0.0

