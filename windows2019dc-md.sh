#!/bin/bash
secrets='./secrets/secrets.json'
path='./windows2019dc-md/windows2019dc-md.json'

if [ -z `which packer` ]; then
  echo "Packer not found - exiting"
else
  if [[ -e $secrets && -e $path ]]; then
    echo "Packer exec found, files found - starting deploy"
    packer validate -var-file=$secrets $path
    packer build -var-file=$secrets $path
  else
    echo "Secret: $secrets or path $path does not exist"
    exit 1
  fi
fi
