
# OPENVPN
FROM resin/rpi-raspbian:wheezy
MAINTAINER Oxyno-zeta <oxynozeta.oz@gmail.com>

# Make APT non-interactive
ENV DEBIAN_FRONTEND noninteractive

# Install software
RUN apt-get update && apt-get upgrade -y && apt-get install -y openvpn

# Needed for script
ENV OPENVPN_CONF_NAME server
ENV OPENVPN_PORT 1194

# Expose
EXPOSE $OPENVPN_PORT

ADD run.sh /run.sh
RUN chmod +x run.sh

ENTRYPOINT "./run.sh"

