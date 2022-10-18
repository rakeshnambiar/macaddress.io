#!/bin/bash
#
# Script to find out the company name of a give MAC Address

# Print out help on how to use the script
echo "Usage: GetMacAddress.sh -e [API_KEY="YOUR_API_KEY"] -e[MAC_ADDRESS=“MAC_ADDRESS_YOU_WANT_TO_CHECK"]""

API_KEY_VAL=$1
MAC_ADDRESS_VAL=$2

docker build . -t macaddress:latest
echo "------------------------------- Output --------------------------------------"
docker run -e API_KEY=$API_KEY_VAL -e MAC_ADDRESS=$MAC_ADDRESS_VAL macaddress:latest
echo "------------------------------- Output --------------------------------------"