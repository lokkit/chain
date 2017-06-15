go-ethereum/build/bin/geth:
	(cd go-ethereum; make)

install: go-ethereum/build/bin/geth
	mkdir -p ${DESTDIR}/opt
	cp go-ethereum/build/bin/geth ${DESTDIR}/opt
	mkdir -p ${DESTDIR}/home/lokkit/.ethereum
	cp -r ethereum/* ${DESTDIR}/home/lokkit/.ethereum/
