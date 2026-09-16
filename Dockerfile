FROM alpine:latest
RUN apk update && apk add --no-cache openjdk8-jre bash
WORKDIR /app
COPY . .
RUN chmod +x main.sh
EXPOSE 10000
CMD ["bash", "main.sh"]
