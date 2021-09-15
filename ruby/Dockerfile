FROM ruby:3.0.2-slim-buster AS base

COPY main.rb /main.rb

RUN echo "runner:x:1000:1000:runner,,,::/bin/false" > /etc/passwd

USER runner

ENTRYPOINT [ "ruby", "/main.rb" ]
