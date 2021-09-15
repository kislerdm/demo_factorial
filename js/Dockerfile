FROM --platform=linux/arm64/v8 node:current-alpine3.12 AS base

COPY main.js /main.js

RUN echo "runner:x:1000:1000:runner,,,::/bin/false" > /etc/passwd

USER runner

ENTRYPOINT [ "node", "/main.js" ]
