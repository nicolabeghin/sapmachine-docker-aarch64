
FROM ubuntu:20.04

ENV SAPMACHINE_VERSION=11.0.15
ENV SAPMACHINE_AARCH64_LINK="https://github.com/SAP/SapMachine/releases/download/sapmachine-11.0.15%2B8/sapmachine-jdk-11.0.15-eabeta.8_linux-aarch64_bin.tar.gz"
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-11
ENV PATH="${JAVA_HOME}/bin:${PATH}"

RUN apt-get update \
    && apt-get install -y --no-install-recommends wget ca-certificates gnupg2 \
    && rm -rf /var/lib/apt/lists/*

RUN wget -qO sapmachine.tar.gz $SAPMACHINE_AARCH64_LINK &&\
    tar zxf sapmachine.tar.gz &&\
    mkdir -p /usr/lib/jvm/ &&\
    mv sapmachine-jdk-${SAPMACHINE_VERSION} /usr/lib/jvm/sapmachine-11 &&\
    rm sapmachine.tar.gz

CMD ["jshell"]
