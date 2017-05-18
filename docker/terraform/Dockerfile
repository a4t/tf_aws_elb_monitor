FROM alpine:3.5

MAINTAINER Shigure Onishi <iwanomoto@gmail.com>

ENV TERRAFORM_VERSION=0.9.5

RUN apk update && \
    apk add bash \
    ca-certificates \
    git \
    openssh \
    openssl \
    unzip \
    wget \
    python \
    py-pip \
    py-setuptools \
    ca-certificates \
    groff \
    less && \
    pip install awscli && \
    wget -P /tmp https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin && \
    rm -rf /tmp/* && \
    rm -rf /var/tmp/*

WORKDIR /terraform

ENTRYPOINT ["/usr/bin/terraform"]

CMD ["--help"]
