FROM eclipse-temurin:17-jdk-alpine
RUN apk add curl
VOLUME /tmp
EXPOSE 8089
ADD target/springboot-aws.jar springboot-aws.jar
ENTRYPOINT ["java", "-jar", "springboot-aws.jar"]