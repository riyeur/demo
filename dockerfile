FROM gradle:7.3.3-jdk11 as build


WORKDIR /desktop_app

#Install Application dependencies
COPY build.gradle ./
COPY gradlew gradlew.bat ./
COPY gradle ./gradle

#Copy all files in the project into the container image
COPY . .


RUN chmod +x ./gradlew
