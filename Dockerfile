FROM alpine:latest
RUN apk update && apk add --no-cache openjdk8-jre bash
WORKDIR /app
COPY . .
RUN chmod +x main.sh bungee/main.sh
EXPOSE 8081
CMD ["bash", "main.sh"]
