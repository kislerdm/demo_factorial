FROM homebrew/brew:3.2.12 AS build

RUN brew install kotlin

COPY main.kt main.kt

RUN kotlinc main.kt -include-runtime -d /main.jar

FROM openjdk:8-jre-slim-buster AS run

COPY --from=build /main.jar /main.jar

RUN echo "runner:x:1000:1000:runner,,,::/bin/false" > /etc/passwd

USER runner

ENTRYPOINT [ "java", "-jar", "/main.jar" ]
