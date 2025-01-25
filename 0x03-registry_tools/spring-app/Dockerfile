FROM amazoncorretto:8u442-alpine3.21

WORKDIR /usr/app

COPY . . 

RUN ./mvnw package

EXPOSE 8080

ENTRYPOINT ["java"]

CMD ["-jar",  "./target/docker-example-1.1.3.jar"]
