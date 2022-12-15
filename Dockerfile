FROM ubuntu

    RUN apt-get update && apt-get update && apt-get install -y \
        #linux requirements
        automake bison build-essential\
        flex gperf git libncurses5-dev \
        libtool libusb-dev libusb-1.0.0-dev pkg-config\
        kconfig-frontends python3-pip curl sudo\
        #Utils
        picocom esptool\
        #USB
        linux-tools-virtual hwdata
    RUN pip install esptool

    #ESP32 Cross compiler
    RUN curl https://dl.espressif.com/dl/xtensa-esp32-elf-gcc8_2_0-esp-2020r2-linux-amd64.tar.gz | tar -xz
    RUN mkdir /opt/xtensa
    RUN mv xtensa-esp32-elf/ /opt/xtensa/
    ENV PATH=$PATH:/opt/xtensa/xtensa-esp32-elf/bin

    WORKDIR /root/nuttxspace/nuttx
    VOLUME ['/root/nuttxspace']
    

    #SHELL ["/bin/bash", "-o", "pipefail", "-c"]


