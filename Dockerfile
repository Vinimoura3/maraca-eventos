# Estágio de compilação com Maven e Java 17 da Amazon
FROM maven:3.8.6-amazoncorretto-17 AS build
COPY . .
RUN mvn clean package -DskipTests

# Estágio de execução ultra leve
FROM amazoncorretto:17-alpine
COPY --from=build /target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]