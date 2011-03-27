#!/bin/sh

false
until [ $? -eq 0 ] ; do
	openssl req -newkey rsa:2048 -nodes -keyout private/$1.pem \
		-out requests/$1.csr -config openssl.cnf
done

