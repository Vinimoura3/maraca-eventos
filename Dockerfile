# Estágio de compilação com Maven e Java 21 da Amazon
FROM maven:3.9.6-amazoncorretto-21 AS build
COPY . .
RUN mvn clean package -DskipTests

# Estágio de execução ultra leve com Java 21
FROM amazoncorretto:21-alpine
COPY --from=build /target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]