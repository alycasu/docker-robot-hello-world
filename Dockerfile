FROM maven:3.8.2-amazoncorretto-8
LABEL maintainer="Autumn Casuto"
WORKDIR /app
COPY . .
RUN mvn clean package
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "target/Web-HelloWorld-1.0.0.jar"]
