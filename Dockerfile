FROM alpine:latest
RUN apk update && apk add --no-cache openjdk8-jre bash wget curl
WORKDIR /app
COPY . .
RUN chmod +x fetch.sh && ./fetch.sh
EXPOSE 10000
CMD ["java", "-Xms512M", "-Xmx512M", "-jar", "BungeeCord.jar"]
