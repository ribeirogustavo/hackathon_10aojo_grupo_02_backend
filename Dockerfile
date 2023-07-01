FROM gradle:jdk17 AS builder

WORKDIR /app

COPY build.gradle .
COPY settings.gradle .
COPY .gradle ./.gradle
COPY gradlew .
COPY src ./src

RUN gradle build --no-daemon


FROM openjdk:17-alpine


COPY --from=builder /app/build/libs/hackaton-0.0.1-SNAPSHOT.jar .


EXPOSE 8080


CMD ["java", "-jar", "hackaton-0.0.1-SNAPSHOT.jar"]
