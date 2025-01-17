# Use an official Linux base image
FROM ubuntu:latest

# Update and install the required tools
RUN apt-get update && apt-get install -y \
    tshark \
    traceroute \
    vim \
    iputils-ping \
    iproute2 \
    curl && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Set default command to bash
CMD ["/bin/bash"]
