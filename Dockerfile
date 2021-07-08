FROM adoptopenjdk/openjdk11:alpine-jre
MAINTAINER Vladimir Bajceta "bajceta@gmail.com"
RUN apk add --update --no-cache \
           graphviz curl ttf-dejavu 
RUN curl -sSfL https://sourceforge.net/projects/plantuml/files/plantuml.jar/download -o plantuml.jar
RUN java -jar plantuml.jar -version
ENTRYPOINT ["java", "-jar", "plantuml.jar", "-p"]
