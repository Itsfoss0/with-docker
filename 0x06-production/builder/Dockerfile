FROM alpine:latest

WORKDIR /app/src

# Confifure http proxy for apk 
RUN echo "http_proxy=${http_proxy}" >> /etc/apk/repositories
RUN echo "https_proxy=${https_proxy}" >> /etc/apk/repositories

RUN apk add git

# Confiure http proxy for git and 
# disable SSL Verification 
RUN git config --global http.sslVerify false
RUN git config --global http.proxy ${http_proxy}




COPY builder.sh . 

ENTRYPOINT [ "./builder.sh" ]

CMD [ "$1" "$2" ]


