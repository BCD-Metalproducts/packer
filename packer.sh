cd $(dirname "$0")

image="$(echo $1 | cut -d '.' -f1)"
packer build "$image.json"
mkdir -p "images/$image"
mv output-qemu/packer-qemu "images/$image/$image.qemu"
rm -rf output-qemu
