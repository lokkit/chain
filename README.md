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
* Support two different configurations: Bootnode, Node
* Add --rpcaddr 0.0.0.0
* Autostart SystemD service
* Cleanup lintian logs of debian package
* Hardcode the follwing enodes
* Add --lightserv 50 to all to support android light node
```
master: 288b97262895b1c7ec61cf314c2e2004407d0a5dc77566877aad1f2a36659c8b698f4b56fd06c4a0c0bf007b4cfb3e7122d907da3b005fa90e724441902eb19e
node1: f02412efb55b1f793982223396804921c60ac360e8664522e8beaea718225088e6aa62eae5bba79e4bbfff13b227650dc77e8599b48c1f2290624d21ee2bec41
node2: 0e0f743d92cef7721e05619343389e4034f21aa5652b5ee2a4f9db1c9ec267b9
```
