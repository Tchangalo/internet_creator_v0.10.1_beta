#!/bin/bash
qm create 1000 --name "pfSense1" --ostype other --memory 1536 --cpu host --cores 2 --scsihw virtio-scsi-pci --virtio0 local-btrfs:8,discard=on --net0 virtio,bridge=vmbr0,macaddr="00:24:18:0A:1B:DE"
qm set 1000 --ide2 /var/lib/pve/local-btrfs/template/iso/pfSense-CE-2.7.2-RELEASE-amd64.iso,media=cdrom
qm set 1000 --boot order=ide2