# Base image 설정 (Java 17 사용)
FROM openjdk:17-jdk

# JAR 파일을 복사
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

# 애플리케이션 실행 명령어
ENTRYPOINT ["java", "-jar", "/app.jar"]
