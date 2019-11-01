FROM docker:19.03.4

RUN apk add --no-cache --update \
        py-pip \
        python-dev \
        libffi-dev \
        openssl-dev \
        gcc \
        libc-dev \
        make && \
    pip install docker-compose==1.24.1 --no-cache-dir && \
    rm -rf /var/cache/apk/*