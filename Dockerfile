# 可以从阿里云的容器镜像服务中 找到openjdk，选择相对应的版本
FROM openjdk:8
# 构建镜像时所需要执行的命令，这里作者是在容器内部创建了一个工作目录
RUN mkdir "/home/test"
# 这里就是进入创建好的目录
WORKDIR "/home/test"
# 将打包后的jar包复制到指定目录(这里我是复制到了创建好的工作目录)下，并重命名
COPY target/catch-barrage-1.0.0.jar /home/test/project.jar
# 运行命令
CMD ["java","-jar","/home/test/project.jar"]