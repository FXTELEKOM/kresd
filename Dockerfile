FROM alpine:latest

RUN apk add --update knot-resolver lua5.1-socket lua5.1-cqueues lua5.1-http && \
    rm -rf /var/cache/apk/*

EXPOSE 53/UDP 53/TCP 443/TCP 853/TCP 5000/TCP

CMD ["kresd", "-c", "/etc/knot-resolver/kresd.conf"]
