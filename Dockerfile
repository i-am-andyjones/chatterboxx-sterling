FROM fedora:latest
MAINTAINER Andy Jones

# Install necessary packages
RUN dnf install -yq make git nodejs npm

# Add repo to container
COPY chatterboxx-sterling/ /sterling/

# Set working directory
WORKDIR /sterling

CMD bin/hubot
