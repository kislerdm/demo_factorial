FROM bash:alpine3.14 AS run

COPY main.sh /main.sh

RUN echo "runner:x:1000:1000:runner,,,::/bin/false" > /etc/passwd

USER runner

CMD ["/main.sh"]
