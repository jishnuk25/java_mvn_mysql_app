FROM openjdk:8-jre-alpine3.9

WORKDIR /target


# exposing the 8080 port for application access
EXPOSE 8080

# set the startup command to execute the jar
CMD ["java", "-jar", "${ARTIFACTID}:${VERSION}.jar"]
