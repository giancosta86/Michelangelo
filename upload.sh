#!/bin/bash

set -e

VERSION=$(cat VERSION)

echo "-----------------------"
echo "Michelangelo - Version: '${VERSION}'"
echo "-----------------------"
echo

docker push giancosta86/michelangelo:v${VERSION}
