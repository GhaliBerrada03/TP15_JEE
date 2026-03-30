# Étape 1 : Image Java
FROM eclipse-temurin:17-jdk-jammy

# Étape 2 : Dossier de travail
WORKDIR /app

# Étape 3 : Copier le JAR
COPY target/springdocker-0.0.1-SNAPSHOT.jar app.jar

# Étape 4 : Exposer le port
EXPOSE 8081

# Étape 5 : Lancer l'app
ENTRYPOINT ["java", "-jar", "app.jar"]