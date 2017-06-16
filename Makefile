all:


install: go-ethereum/build/bin/geth
	mkdir -p ${DESTDIR}/opt
	cp go-ethereum/build/bin/geth ${DESTDIR}/opt
	mkdir -p ${DESTDIR}/home/lokkit/.ethereum
	cp -r ethereum/* ${DESTDIR}/home/lokkit/.ethereum/

deb:
	(cd go-ethereum; make geth)
	debuild -us -uc -b

deb_raspberry:
	(cd go-ethereum; make geth-linux-arm-7)
	mv go-ethereum/build/bin/geth-linux-arm-7 go-ethereum/build/bin/geth
	docker build . -t mon
	docker run -v $(PWD)/..:/out -v $(PWD):/out/src -it mon debuild -uc -us -b
