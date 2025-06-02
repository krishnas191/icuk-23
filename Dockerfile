FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/oms-customer-service-0.0.1-SNAPSHOT.jar oms-customer.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "oms-customer.jar"]
EXPOSE 8080
