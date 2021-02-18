#!/bin/sh

echo "Running docker container ..."
docker run -ti \
    -v /mnt/tftpboot:/var/lib/tftpboot \
    --network host \
    --cap-add=NET_ADMIN \
    lcarnevale/dnsmasq