FROM gradle:jdk17 AS builder

WORKDIR /app

COPY build.gradle .
COPY settings.gradle .
COPY .gradle ./.gradle
COPY gradlew .
COPY src ./src

RUN gradle build --no-daemon

FROM openjdk:17-alpine

ENV DB_HOSTNAME=$var_db_hostname
ENV DB_PORT=$var_db_port
ENV DB_NAME=$var_db_name
ENV DB_USERNAME=$var_db_username
ENV DB_PASSWORD=$var_db_password
ENV AUTH_USERNAME=$var_auth_username
ENV AUTH_PASSWORD=$var_auth_password


COPY --from=builder /app/build/libs/hackaton-0.0.1-SNAPSHOT.jar .

EXPOSE 8080

CMD ["java", "-jar", "hackaton-0.0.1-SNAPSHOT.jar"]
