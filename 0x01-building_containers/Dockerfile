FROM ubuntu:22.04

# configure http proxy for apt

COPY proxy.conf /etc/apt/apt.conf.d/

RUN apt-get update && apt-get install -y curl

WORKDIR /src/app/

COPY curler.sh .

CMD ./curler.sh
