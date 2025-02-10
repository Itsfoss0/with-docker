FROM node:current-alpine3.20

WORKDIR /usr/src/app


RUN adduser \
    --gecos "" \
    --disabled-password \
    dev

RUN chown dev .

COPY . . 

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN ./script.sh

EXPOSE 3000

ENTRYPOINT ["serve", "-s", "build"]
