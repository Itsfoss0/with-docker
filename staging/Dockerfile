FROM alpine:3.19

WORKDIR /usr/src/app

COPY hello.sh .

RUN chmod u+x hello.sh

RUN touch additional.txt

CMD ./hello.sh

