FROM php:fpm-buster AS run

COPY main.php /main.php

RUN echo "runner:x:1000:1000:runner,,,::/bin/false" > /etc/passwd

USER runner

ENTRYPOINT [ "php", "/main.php" ]
