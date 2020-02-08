FROM ubuntu:16.04

# To make it easier for build and release pipelines to run apt-get,
# configure apt to not require confirmation (assume the -y argument by default)
ENV DEBIAN_FRONTEND=noninteractive
RUN echo "APT::Get::Assume-Yes \"true\";" > /etc/apt/apt.conf.d/90assumeyes

# install basic tooling
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
  apt-transport-https \
  apt-utils \
  ca-certificates \
  curl \
  dnsutils \
  file \
  ftp \
  git \
  gnupg \
  iproute2 \
  iputils-ping \
  jq \
  libcurl3 \
  libicu55 \
  libunwind8 \
  lsb-release \
  locales \
  netcat \
  openssh-client \
  rsync \
  shellcheck \
  sudo \
  telnet \
  time \
  tzdata \
  unzip \
  wget \
  zip

WORKDIR /azp

COPY ./start.sh .
RUN chmod +x start.sh

CMD ["./start.sh"]