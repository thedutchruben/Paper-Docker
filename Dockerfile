FROM openjdk:18.0.2-jdk-slim
ENV version 1.19.1
ENV XMS 1G
ENV XMX 1G
VOLUME /minecraft
WORKDIR /minecraft
RUN apt update
RUN apt install jq -y
RUN apt install curl -y
RUN apt install screen -y
COPY 'scripts' /scripts
CMD screen -S minecraft sh /scripts/getPaperFile.sh