FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive
ENV SCREEN_SIZE 1600x900x16

EXPOSE 5902 6080

RUN apt update
RUN apt install -y git python python-numpy x11vnc xvfb openbox menu net-tools && \
    cd /root && git clone https://github.com/kanaka/noVNC.git && \
    cd noVNC/utils && git clone https://github.com/kanaka/websockify websockify 

RUN mkdir ~/.vnc/ && \
    touch ~/.vnc/passwd

ADD start.sh /root/start.sh
RUN chmod +x /root/start.sh

