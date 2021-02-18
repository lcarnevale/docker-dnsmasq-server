#!/bin/sh

echo "Building the dnsmasq docker image ..."
docker build --rm -t lcarnevale/dnsmasq .