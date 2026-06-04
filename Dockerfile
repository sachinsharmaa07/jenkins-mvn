FROM maven:3.9.9-eclipse-temurin-17

WORKDIR /app

COPY . .

RUN mvn clean package -DskipTests

CMD ["java","-cp","target/my-app-1.0-SNAPSHOT.jar","com.example.App"]