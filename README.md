# Lokkit chain

This repository holds the genesis block of the lokkit private chain.
It also provides a debian package which install `geth` as a systemd service.

## Build debian package
```
debuild -us -uc -b
dpkg -i ../lokkit-chain_0.0.1_all.deb
```

## TODO's
* Build for specific architecture (rapsberry)
* Cleanup lintian logs of debian package
