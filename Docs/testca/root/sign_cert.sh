#!/bin/sh

#	openssl req -x509 -extensions v3_req -in requests/$1.csr \
#		-config openssl.cnf -days 365 -out certs/$1.crt \
#		-extensions v3_req -key private/cakey.pem
openssl ca -config openssl.cnf -extensions usr_cert \
	-in requests/$1.csr -outdir certs

