FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive
ENV SCREEN_SIZE 1600x900x16

RUN apt update
RUN apt install -y git python python-numpy x11vnc xvfb openbox menu net-tools && \
    cd /root && git clone https://github.com/kanaka/noVNC.git

ADD start.sh /root/start.sh

EXPOSE 5902 6080
