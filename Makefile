install:
	(cd go-ethereum; make)

	mkdir -p ${DESTDIR}/opt
	cp go-ethereum/build/bin/geth ${DESTDIR}/opt/
	mkdir -p ${DESTDIR}/root/.ethereum
	cp -r ethereum/* ${DESTDIR}/root/.ethereum/
