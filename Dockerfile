FROM alpine:latest
LABEL maintainer "Lorenzo Carnevale <lcarnevale@unime.it>" 

RUN apk --no-cache --update --verbose update && \
    apk add --no-cache dnsmasq

COPY etc/ /etc

VOLUME ["/var/lib/tftpboot/"]

ENTRYPOINT ["dnsmasq"]