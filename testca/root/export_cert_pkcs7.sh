#!/bin/sh

echo "You probably want pkcs7"
exit 1

if [ "$1"z == ""z ] ; then
	echo "Usage:" >&2
	echo " $0 <shortname>" >&2
	exit 1
fi

openssl pkcs12 -export -out certs/$1.p12 -nokeys -info -in certs/$1.pem \
	-name "$1 Certificate File" -CAfile cacert.pem </dev/null

