#!/bin/sh

if [ -f index.txt ] ; then rm index.txt; fi
if [ -f rootcrl.pem ] ; then rm rootcrl.pem; fi
if [ -d private ] ; then rm -rf private; fi
if [ -d requests ] ; then rm -rf requests; fi
if [ -d certs ] ; then rm -rf certs; fi
if [ -f cacert.pem ] ; then rm cacert.pem; fi

mkdir private
mkdir requests
