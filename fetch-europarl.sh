#!/bin/bash

echo '-- downloading --'
P=http://www.statmt.org/europarl/v7/
curl $P | grep "-en.tgz" | sed -E 's/^.*?>(.*-en)/\1/g' | sed -E 's/<.*$//g' | xargs -I {} echo $P{} > urls.txt
cat urls.txt | xargs wget

echo '-- decompressing --'
ls | grep tgz | xargs -I {} tar -xzvf {}

echo '-- cleaning up --'
rm *tgz 
rm urls.txt

mkdir data
mv europarl-v7.* data


