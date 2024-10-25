# Base image 설정 (Java 17 사용)
FROM openjdk:17-jdk

# JAR 파일 경로 설정
ARG JAR_FILE=target/culiso-0.0.1-SNAPSHOT.jar

# JAR 파일을 복사
COPY ${JAR_FILE} app.jar

# 8080 포트 노출
EXPOSE 8080

# 애플리케이션 실행 명령어
ENTRYPOINT ["java", "-jar", "/app.jar"]
