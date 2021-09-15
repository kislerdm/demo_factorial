FROM python:3.8-slim AS base

COPY main.py /main.py

RUN echo "runner:x:1000:1000:runner,,,::/bin/false" > /etc/passwd

USER runner

ENTRYPOINT [ "python3", "/main.py" ]
