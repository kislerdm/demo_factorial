FROM debian:stable-slim AS build

RUN apt-get update -y \
    && apt-get install -y \
        build-essential \
        gdb \
        nasm

apt-get install -y build-essential nasm

WORKDIR /src

COPY . .

RUN nasm -f elf64 main.asm -o hello.o \
    && ld -o /runner hello.o

RUN echo "runner:x:1000:1000:runner,,,::/bin/false" > /etc/passwd \
    && chmod +x /runner \
    && chown runner /runner

FROM scratch AS run

COPY --from=build /etc/passwd /etc/passwd
COPY --from=build /runner /runner

USER runner

ENTRYPOINT ["/runner"]
