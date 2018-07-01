FROM fluent/fluent-bit:0.13.0
MAINTAINER Prashant Singh <prashant.vicky@gmail.com>
USER root
RUN apt update
RUN apt install vim
ADD . /app
CMD ["/fluent-bit/bin/fluent-bit", "-c", "/fluent-bit/etc/fluent-bit.conf"]
