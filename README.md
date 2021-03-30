# PXE Project
Simple docker container for starting a dnsmasq server for PXE purpose.

## How to Build it
```bash
docker build --rm -t lcarnevale/dnsmasq .
```

## How to Run it
```bash
docker run -ti \
    -v /mnt/tftpboot:/var/lib/tftpboot \
    --network host \
    --cap-add=NET_ADMIN \
    lcarnevale/dnsmasq
```

Use also the option `--restart unless-stopped` if you wanna make it able to start on boot.