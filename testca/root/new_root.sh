#!/bin/sh

./clean_root.sh

false
until [ $? -eq 0 ] ; do
	openssl req -new -x509 -extensions v3_ca -keyout private/cakey.pem \
		-out cacert.pem -days 7300 -config ./openssl.cnf
done

echo 01 >serial

touch index.txt

./gen_crl.sh

