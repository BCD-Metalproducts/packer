#! /bin/bash

cd $(dirname "$0")

image="$(echo $1 | cut -d '.' -f1)"
checksum="$(md5sum iso/$image.iso | cut -d ' ' -f1)"
packer build -var "iso_checksum=$checksum" "$image.json"
mkdir -p "images/$image"
mv output-qemu/packer-qemu "images/$image.qcow2"
rm -rf output-qemu
