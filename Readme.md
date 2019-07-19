# MAC2addy retrieves the vendor of a specific MAC.

This provides a simple script and Dockerfile to provide vendor 
information for a given MAC address . This assumes you have registered 
and obtained an API key from macaddress.io.

## USAGE Prerequisites
   1. Linux environment with bash, curl, and Docker installed
      and running. Tested against Arch linux.
   2. An API key from https://macaddress.io/api

## Usage from CLI

```
$ mac2vendor.sh 'api_key' 'MAC'
```
## Using from Docker

```
docker build -t mac2vendor .
```

```
docker run mac2vendor 'API_Key' 'MAC'
```