FROM ubuntu:20.04

### INSTALL : Basic Tools
RUN apt-get update && apt-get install -y \
  vim \
  openssh-client

### INSTALL : Basic Network Utilities
RUN apt-get update && apt-get install -y \
  curl \
  iputils-ping \
  net-tools \
  dnsutils \
  iproute2 \
  tcpdump \
  traceroute \
  netcat \
  telnet

### INSTALL : Netutils-Linux
#RUN apt-get install -y \
#  python3-pip
#RUN pip3 install netutils-linux

### INSTALL : kubectl
RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
RUN chmod +x ./kubectl
RUN mv /kubectl /usr/local/bin/.

# ENTRYPOINT sleep infinity

RUN apt-get update && apt-get install -y \
    nginx

COPY volterra_info.sh /volterra_info.sh

RUN chmod 755 /volterra_info.sh

ENTRYPOINT /volterra_info.sh && /usr/sbin/nginx -g "daemon off;" 

