FROM alpine:latest
RUN apk update && apk add --no-cache openjdk8-jre bash wget
WORKDIR /app
COPY . .
RUN wget -O bungee.jar https://md-5.net
EXPOSE 10000
CMD ["java", "-Xms512M", "-Xmx512M", "-jar", "bungee.jar"]
