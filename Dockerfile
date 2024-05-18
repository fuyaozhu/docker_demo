# 父容器
FROM openjdk:8
# 作者信息
MAINTAINER dutao <xxx@qq.com>
RUN echo "正在构建镜像啊啊啊啊！！！"
VOLUME /tmp
RUN mkdir /home/demo
# 添加jar包（路径），如果是当前目录下则可以省略路径，然后起别名
ADD ./target/docker_demo-2.0-SNAPSHOT.jar demo.jar
#容器暴露的端口 即jar程序在容器中运行的端口
EXPOSE 8333
# 执行启动jar包命令
CMD nohup java -jar demo.jar >> /home/demo/demo-$(date +%Y-%m-%d).log 2>&1
RUN echo "镜像构建成功啊啊啊啊啊啊啊！！！"
