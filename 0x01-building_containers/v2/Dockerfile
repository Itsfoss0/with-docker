FROM ubuntu:22.04



RUN apt-get update && apt-get install -y curl

WORKDIR /app

COPY curler.sh /app/

ENTRYPOINT [ "./curler.sh" ]

CMD ["helsinki.fi"]