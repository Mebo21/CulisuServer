# Base image 설정 (Java 17 사용)
FROM openjdk:17-jdk

# JAR 파일을 복사
ARG culiso-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

EXPOSE 8080

# 애플리케이션 실행 명령어
ENTRYPOINT ["java", "-jar", "/app.jar"]
