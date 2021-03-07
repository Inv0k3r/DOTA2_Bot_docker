FROM ubuntu:20.04
# COPY sources.list /etc/apt/
# RUN apt update
WORKDIR /home/
COPY DOTA2_Bot ./DOTA2_Bot
COPY mcl-installer /home/
RUN chmod +x /home/mcl-installer
WORKDIR /home/mcl/
RUN ./home/mcl-installer
RUN ./mcl --update-package net.mamoe:mirai-api-http --channel stable --type plugin

