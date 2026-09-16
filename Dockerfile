FROM alpine:latest
RUN apk update && apk add --no-cache openjdk8-jre bash wget
WORKDIR /app
COPY . .

# Downloads the real file using GitHub's open network route
RUN wget -O BungeeCord.jar https://github.com

EXPOSE 10000
CMD ["java", "-Xms512M", "-Xmx512M", "-jar", "BungeeCord.jar"]
