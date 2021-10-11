FROM maven:3.8-openjdk-11
COPY . /tmp/src
WORKDIR /tmp/src
RUN mvn -pl models clean install \
    && mvn clean package
