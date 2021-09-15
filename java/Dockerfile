FROM openjdk:11-slim-buster AS build

COPY main.java main.java

RUN javac main.java

RUN echo "runner:x:1000:1000:runner,,,::/bin/false" > /etc/passwd

USER runner

ENTRYPOINT ["java", "main"]
