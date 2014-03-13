#!/bin/bash -e

PRICEFILE=/tmp/btcprice
if [[ $(find  /tmp/btcprice -mmin +1) != '' ]]; then
    curl -s https://www.bitstamp.net/api/ticker/ > $PRICEFILE
fi

cat $PRICEFILE | jq -r '.last'
