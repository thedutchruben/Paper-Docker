FROM openjdk:17.0.2-jdk-slim
ENV version 1.19.1
ENV XMS 1G
ENV XMX 1G
VOLUME /minecraft
WORKDIR /minecraft
RUN apt update && apt install jq curl screen -y
COPY 'scripts' /scripts
CMD screen -S minecraft sh /scripts/getPaperFile.sh
