#!/bin/sh

false
until [ $? -eq 0 ] ; do
	openssl ca -gencrl -keyfile private/cakey.pem -cert cacert.pem \
		-out rootcrl.pem -crldays 365 -config ./openssl.cnf \
		-extensions crl_ext
	# XXX SCP to proper location
done

