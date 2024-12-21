FROM alpine:3.21

RUN apk --update add ympd

EXPOSE 8080

CMD ["ympd", "-h","mpdhost"]
