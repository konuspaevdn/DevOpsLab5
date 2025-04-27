FROM maven:3.8-openjdk-11-slim AS build

WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline -B
COPY src ./src
RUN mvn package -DskipTests

FROM eclipse-temurin:21-jre-alpine

RUN adduser -D spring && \
    apk add --no-cache bash && \
    rm -rf /var/cache/apk/*

WORKDIR /app
COPY --from=build /app/target/*.jar ./app.jar
RUN chown spring:spring /app

USER spring
ENTRYPOINT ["java", "-jar", "app.jar"]
