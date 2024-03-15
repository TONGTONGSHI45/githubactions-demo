# 使用 OpenJDK 作为基础镜像
FROM openjdk:8-jre-alpine

# 设置工作目录
ARG JAR_FILE=build/libs/demo-kotlin-0.0.1-SNAPSHOT.jar

# 复制编译后的 Java 可执行文件到镜像中
COPY ${JAR_FILE} demo-kotlin.jar

# 暴露应用程序的端口（如果有需要）
EXPOSE 8080

# 在容器启动时运行应用程序
CMD ["java", "-jar", "demo-kotlin.jar"]
