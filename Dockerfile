FROM centos 
#基础镜像

#运行脚本，通过脚本配置环境，以及下载war包
RUN sudo yum install -y java
RUN mkdir /app
COPY /target/*.war  /app

EXPOSE 8082
