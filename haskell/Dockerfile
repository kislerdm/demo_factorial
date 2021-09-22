FROM haskell:stretch AS build

COPY main.hs main.hs

RUN ghc -o /runner *.hs

RUN echo "runner:x:1000:1000:runner,,,::/bin/false" > /user.txt

FROM scratch AS run

COPY --from=build /user.txt /etc/passwd
COPY --from=build /runner /runner

USER runner

ENTRYPOINT ["/runner"]
