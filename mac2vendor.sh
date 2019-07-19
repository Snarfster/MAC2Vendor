#!/bin/bash

# Simple script to query vendor information from macaddress.io
# Script assumes you already have an API key from macaddress.io. If not head on over to https://macaddress.io/api to grab one

# USAGE
# ./mac2vendor.sh 'API_KEY' 'MAC'
#

# API key input from macaddress.io parameter. Avoiding hardcoding to prevent accidental sharing.
MACIO_KEY=${1}

# Provide MAC Address parameter. 
MAC=${2}

# Available output formats are json,xml,csv,vendor. If undefined only vendor information is returned. https://macaddress.io/api/documentation/making-requests
OUTPUT=vendor

# API Request Variable
URL="https://api.macaddress.io/v1?apiKey=${MACIO_KEY}&output=$OUTPUT&search=${MAC}"

# Retrieve vendor. -s flag passed to supress progress when executed in docker.
curl -Ss ${URL}

# Clean line break
echo
