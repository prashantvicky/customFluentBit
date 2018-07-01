FROM fluent/fluent-bit:0.12.0
MAINTAINER Prashant Singh <prashant.vicky@gmail.com>
USER root
RUN apt update
RUN apt-get install vim
ADD . /app
#CMD ["/fluent-bit/bin/fluent-bit", "-c", "/fluent-bit/etc/fluent-bit.conf"]
RUN /fluent-bit/bin/fluent-bit -c /fluent-bit/etc/fluent-bit.conf
