ARG BASE_CONTAINER=nvcr.io/nvidia/deepstream:6.0.1-devel
FROM $BASE_CONTAINER

RUN apt-key del 7fa2af80

ARG DISTRO

ARG ARCH=x86_64

RUN wget https://developer.download.nvidia.com/compute/cuda/repos/$DISTRO/$ARCH/cuda-keyring_1.0-1_all.deb

RUN dpkg -i cuda-keyring_1.0-1_all.deb

RUN sed -i '/developer\.download\.nvidia\.com\/compute\/cuda\/repos/d' /etc/apt/sources.list.d/*

RUN sed -i '/developer\.download\.nvidia\.com\/compute\/machine-learning\/repos/d' /etc/apt/sources.list.d/*

RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
