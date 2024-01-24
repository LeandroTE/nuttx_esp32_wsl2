FROM ghcr.io/apache/nuttx/apache-nuttx-ci-linux

ARG USER_ID
ARG GROUP_ID


RUN groupadd -g $GROUP_ID builder \
    && useradd -u $USER_ID -g builder -m builder

USER builder
WORKDIR /sources

CMD ["/bin/bash"]



