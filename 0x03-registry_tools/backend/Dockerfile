FROM golang:1.22.11-alpine3.21 AS build

WORKDIR /usr/src/app

RUN adduser \
    --gecos "" \
    --disabled-password \
    dev

RUN chown dev .

COPY . .

USER dev

ENV REQUEST_ORIGIN=*

RUN go build


FROM scratch

WORKDIR /usr/src/app

COPY --from=build /usr/src/app/server /usr/src/app/server

EXPOSE 8080

ENTRYPOINT ["./server"]
