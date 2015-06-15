#!/bin/bash -x
## Add here the required sources
sudo add-apt-repository ppa:terry.guo/gcc-arm-embedded &> /dev/null

## Update sources
sudo apt-get -qq update

## Install COOJA dependencies
sudo apt-get -qq install openjdk-7-jdk openjdk-7-jre ant

## Install dev esentials
sudo apt-get -qq install doxygen git build-essential libncurses5-dev nano

## Install the RE-Mote toolchain and tools
sudo apt-get -qq install gcc-arm-none-eabi

## Install Z1 toolchain and tools
sudo wget http://sourceforge.net/projects/zolertia/files/Toolchain/msp430-47.tar.gz >/dev/null 2>&1
sudo tar zxf msp430-47.tar.gz -C /opt
export PATH=/opt/msp430-47/bin:$PATH

## Add ourselves to the dialout group to use the USBx ports
sudo usermod -a -G dialout vagrant

## Get the latest Contiki source
git clone --recursive git://github.com/contiki-os/contiki.git contiki >/dev/null 2>&1