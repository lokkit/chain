# Lokkit chain

This repository holds the genesis block of the lokkit private chain.
It also provides a debian package which install `geth` as a systemd service.

## Build debian package
```
make deb
dpkg -i ../lokkit-chain_0.0.1_amd64.deb

make deb_raspberry
dpkg -i ../lokkit-chain_0.0.1_armhf.deb
```

## TODO's
* Cleanup lintian logs of debian package
