FROM alpine:latest

RUN apk add tor --update-cache \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ ;\
    rm -rf /var/cache/apk/* ;\
    echo "SocksPort 0.0.0.0:9050" > /etc/tor/torrc ;\
    chown -R tor /etc/tor

EXPOSE 9050

USER tor

ENTRYPOINT ["tor"]
