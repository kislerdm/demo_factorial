FROM dart:stable AS build

COPY . .

RUN dart pub get --offline \
    && dart compile exe *.dart -o /runner

RUN echo "runner:x:1000:1000:runner,,,::/bin/false" > /user.txt

FROM scratch AS run

COPY --from=build /user.txt /etc/passwd
COPY --from=build /runtime/ /
COPY --from=build /bin/runner /runner

USER runner

CMD ["/runner"]
