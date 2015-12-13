#!/bin/bash

# Author : Oxyno-zeta <oxynozeta.oz@gmail.com>

# Prepare
mkdir -p /run/openvpn/
mkdir -p /var/run/openvpn/

ARGS=" --cd /etc/openvpn"
ARGS=$ARGS" --status /run/openvpn/server.status 10"
ARGS=$ARGS" --config /etc/openvpn/"$OPENVPN_CONF_NAME".conf"

exec /usr/sbin/openvpn $ARGS 

