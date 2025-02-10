FROM golang:1.22.11-alpine3.21

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

EXPOSE 8080

ENTRYPOINT ["./server"]
