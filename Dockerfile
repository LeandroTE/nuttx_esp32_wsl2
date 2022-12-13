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
    #RUN groupadd -g 1000 dev \
     #     && useradd -u 1000 -g dev -d /home/dev dev \
      #    && mkdir /home/dev \
      #    && chown -R dev:dev /home/dev

    #USER dev

    

    # The following 3 lines allow the 'dev' user to run sudo (password is "dev"). 
    # Useful when later on packages need to be installed that are missing.
    #RUN usermod -aG sudo dev
    #SHELL ["/bin/bash", "-o", "pipefail", "-c"]
    #RUN echo 'dev:dev' | chpasswd
    
    #Nuttx env
    #WORKDIR /home
    
    #RUN useradd -m -d /home/ubuntu ubuntu && \
    #    chown -R ubuntu /home/ubuntu && \
    #    adduser ubuntu sudo && \
    #    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

    #USER ubuntu

    RUN mkdir ~/nuttxspace
    RUN git clone https://github.com/apache/incubator-nuttx.git  ~/nuttxspace/nuttx
    RUN git clone https://github.com/apache/incubator-nuttx-apps.git ~/nuttxspace/apps


    #ESP32 Cross compiler
    RUN curl https://dl.espressif.com/dl/xtensa-esp32-elf-gcc8_2_0-esp-2020r2-linux-amd64.tar.gz | tar -xz
    RUN mkdir /opt/xtensa
    RUN mv xtensa-esp32-elf/ /opt/xtensa/
    ENV PATH=$PATH:/opt/xtensa/xtensa-esp32-elf/bin

    RUN mkdir ~/nuttxspace/esp-bins
    RUN curl -L "https://github.com/espressif/esp-nuttx-bootloader/releases/download/latest/bootloader-esp32.bin" -o ~/nuttxspace/esp-bins/bootloader-esp32.bin
    RUN curl -L "https://github.com/espressif/esp-nuttx-bootloader/releases/download/latest/partition-table-esp32.bin" -o ~/nuttxspace/esp-bins/partition-table-esp32.bin
    

    WORKDIR /root/nuttxspace/nuttx
    VOLUME ['/root/nuttxspace/app_user']
    

    #SHELL ["/bin/bash", "-o", "pipefail", "-c"]


