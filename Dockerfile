FROM alpine:latest

RUN apk add --no-cache coturn curl

COPY turnserver.conf /etc/turnserver.conf

EXPOSE 3478 5349

CMD ["turnserver", "-c", "/etc/turnserver.conf", "-v"]
