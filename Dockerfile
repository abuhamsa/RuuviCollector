FROM maven:3.5.3-jdk-8-alpine
RUN apk update
RUN apk add bluez
RUN apk add bluez-deprecated
ADD . /app
WORKDIR /app
RUN mvn clean package
COPY start.sh /start.sh
RUN chmod +x /start.sh
ENTRYPOINT ["/start.sh"]
