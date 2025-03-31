FROM eclipse-temurin:17-jdk-alpine
RUN apk add curl
VOLUME /tmp
EXPOSE 8089
ADD target/springboot-aws.jar ahmed.jar
ENTRYPOINT ["java", "-jar", "ahmed<.jar"]