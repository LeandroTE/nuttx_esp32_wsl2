FROM ghcr.io/apache/nuttx/apache-nuttx-ci-linux

ARG USER_ID
ARG GROUP_ID

RUN addgroup --gid $USER_ID user
RUN adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID user

RUN apt-get update && apt-get update && apt-get install -y \
    #Utils
    picocom net-tools

WORKDIR /root/nuttxspace
VOLUME ['/root/nuttxspace']

# set dummy git config
RUN git config --global --add safe.directory '*'
