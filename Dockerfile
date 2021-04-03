FROM ubuntu:groovy

WORKDIR /code

# Setup base image deps
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc-arm-linux-gnueabihf \
    qemu-user \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/bin/bash"]
