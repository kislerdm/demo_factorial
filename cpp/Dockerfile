FROM frolvlad/alpine-gxx AS base

COPY main.cpp /main.cpp

RUN g++ -o /runner /main.cpp

RUN echo "runner:x:1000:1000:runner,,,::/bin/false" > /etc/passwd

USER runner

ENTRYPOINT ["./runner"]
