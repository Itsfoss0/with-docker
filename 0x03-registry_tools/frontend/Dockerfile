# building stage
FROM node:current-alpine3.20 AS build

WORKDIR /usr/src/app

RUN adduser \
    --gecos "" \
    --disabled-password \
    dev && chown dev  .

USER dev

COPY --chown=dev:dev . . 

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN ./script.sh


# running stage
FROM node:iron-alpine3.21
WORKDIR /usr/src/app

COPY --from=build  /usr/src/app/build /usr/src/app/build
RUN npm install  -g serve


EXPOSE 3000

ENTRYPOINT ["serve", "-s", "build"]
