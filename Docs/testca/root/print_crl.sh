#!/bin/sh

openssl crl -in rootcrl.pem -text -CAfile cacert.pem -noout 2>&1
