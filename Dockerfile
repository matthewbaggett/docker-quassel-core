FROM alpine:3.5
LABEL maintainer "Matthew Baggett <matthew@baggett.me>"

RUN apk add --no-cache \
    quassel-core \
    icu-libs \
    qt-sqlite \
    qt-postgresql \
    openssl

RUN mkdir /etc/quasselcore/ && \
	chown -R quassel:root /etc/quasselcore/

WORKDIR /etc/quasselcore/

VOLUME ["/etc/quasselcore/"]

ENTRYPOINT ["/usr/bin/quasselwrapper.sh"]
CMD ["-c","/etc/quasselcore/","--require-ssl"]

EXPOSE 4242

COPY openssl.cnf /etc/quasselcore/
COPY gen_certificate.sh /etc/quasselcore/
COPY wrapper.sh /usr/bin/quasselwrapper.sh
