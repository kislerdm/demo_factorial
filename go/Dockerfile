FROM golang:1.17-alpine3.14 AS build

WORKDIR /go/src/

COPY main.go /go/src/main.go

RUN CGO_ENABLED=0 GOARCH=amd64 GOOS=linux go build -a -gcflags=all="-l -B -C" -ldflags="-w -s" -o /runner/runner *.go

RUN echo "runner:x:1000:1000:runner,,,::/bin/false" > /user.txt

FROM scratch AS run

COPY --from=build /user.txt /etc/passwd
COPY --from=build /runner/runner /runner

USER runner

CMD ["/runner"]
