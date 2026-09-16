FROM alpine:latest
RUN apk update && apk add --no-cache openjdk8-jre bash wget curl
WORKDIR /app
COPY . .

# Native build protocol for Eaglercraft 1.12.2 
RUN mkdir -p bungee/plugins
RUN curl -L -o bungee/BungeeCord.jar https://github.com || wget -O bungee/BungeeCord.jar https://github.com
RUN curl -L -o bungee/plugins/EaglerXServer.jar https://github.com || echo "Plugin manually linked"

EXPOSE 10000
CMD ["java", "-Xms512M", "-Xmx512M", "-jar", "bungee/BungeeCord.jar"]
