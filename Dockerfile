FROM ubuntu

    # The following 2 lines are added to avoid hanging the container creation. 
    # See <https://grigorkh.medium.com/fix-tzdata-hangs-docker-image-build-cdb52cc3360d>
    ENV TZ=Europe/Brussels
    RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

    RUN apt-get update && apt-get install -y \
        bison flex gettext texinfo libncurses5-dev locales \
        libncursesw5-dev gperf automake libtool pkg-config \
        build-essential genromfs libgmp-dev libmpc-dev \
        libmpfr-dev libisl-dev binutils-dev libelf-dev git \
        libexpat-dev gcc-multilib g++-multilib picocom \
        u-boot-tools util-linux kconfig-frontends sudo \
        gcc-arm-none-eabi binutils-arm-none-eabi

    RUN groupadd -g 1000 dev \
          && useradd -u 1000 -g dev -d /home/dev dev \
          && mkdir /home/dev \
          && chown -R dev:dev /home/dev

    # The following 3 lines allow the 'dev' user to run sudo (password is "dev"). 
    # Useful when later on packages need to be installed that are missing.
    RUN usermod -aG sudo dev
    SHELL ["/bin/bash", "-o", "pipefail", "-c"]
    RUN echo 'dev:dev' | chpasswd

    RUN locale-gen en_US.UTF-8

    ENV LANG en_US.UTF-8

    USER dev

    WORKDIR /home/dev