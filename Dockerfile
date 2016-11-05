FROM python:3.4-alpine

MAINTAINER steranin

RUN apk add --update build-base libffi libffi-dev openssl openssl-dev && \
    pip install warcprox==2.0.b1 && \
    apk del build-base libffi-dev openssl-dev

EXPOSE 8000

VOLUME /warcs /db /ca

ENTRYPOINT ["warcprox", "--address", "0.0.0.0"]
