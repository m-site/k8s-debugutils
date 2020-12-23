FROM ubuntu:20.04

RUN apt-get update

### INSTALL : Basic Tools
RUN apt-get install -y \
  vim \
  openssh-client

### INSTALL : Basic Network Utilities
RUN apt-get install -y \
  curl \
  iputils-ping \
  net-tools

### INSTALL : Netutils-Linux
#RUN apt-get install -y \
# python3-pip
#RUN pip3 install netutils-linux

### INSTALL : kubectl
RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
RUN chmod +x ./kubectl
RUN mv kubectl /usr/local/bin/
