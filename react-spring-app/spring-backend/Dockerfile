FROM ubuntu:24.04

RUN apt update \
    && apt install -y openjdk-11-jdk maven mysql-client-core-8.0 \
    && rm -rf /var/lib/apt/lists/*

COPY pom.xml /build/pom.xml

WORKDIR /build

RUN mvn dependency:resolve 

COPY . /build/

CMD sh -c "./mvnw package -DskipTests && java -jar target/hobbie-backend-0.0.1-SNAPSHOT.jar"
