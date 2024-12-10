FROM openjdk:25-jdk-slim
ENV version 1.21.1
ENV XMS 1G
ENV XMX 1G
ENV EULA false
VOLUME /minecraft
WORKDIR /minecraft
RUN apt update && apt install jq curl screen -y
COPY 'scripts' /scripts
CMD screen -S minecraft sh /scripts/getPaperFile.sh