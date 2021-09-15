FROM rust:1.55.0-slim-buster AS base

COPY main.rs main.rs

RUN rustc -o /runner main.rs

RUN echo "runner:x:1000:1000:runner,,,::/bin/false" > /etc/passwd

USER runner

ENTRYPOINT ["/runner"]
